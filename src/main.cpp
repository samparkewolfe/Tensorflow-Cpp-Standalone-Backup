#include <vector>
#include "tensorflow/core/public/session.h"
#include "tensorflow/cc/ops/standard_ops.h"
#include "tensorflow/core/protobuf/meta_graph.pb.h"
#include "includes.h"

using namespace tensorflow;
// Build a computation graph that takes a tensor of shape [?, 2] and
// multiplies it by a hard-coded matrix.

GraphDef CreateGraphDef()
{
	Scope root = Scope::NewRootScope();

	auto X = ops::Placeholder(root.WithOpName("x"), DT_FLOAT,
		     ops::Placeholder::Shape({ -1, 2 }));
	auto A = ops::Const(root, { { 3.f, 2.f },{ -1.f, 0.f } });

	auto Y = ops::MatMul(root.WithOpName("y"), A, X,
		     ops::MatMul::TransposeB(true));

	GraphDef def;
	TF_CHECK_OK(root.ToGraphDef(&def));

	return def;
}


int main(int argc, char* argv[])
{
	
//----------------LOAD GRAPH-----------------

	// set up your input paths
	const string pathToGraph = "models/my-model-simple.meta";
	const string checkpointPath = "models/my-model-simple";

	auto session = NewSession(SessionOptions());
	if (session == nullptr) {
		throw std::runtime_error("Could not create Tensorflow session.");
	}

	Status status;

	// Read in the protobuf graph we exported
	MetaGraphDef graph_def;
	status = ReadBinaryProto(Env::Default(), pathToGraph, &graph_def);
	if (!status.ok()) {
		throw std::runtime_error("Error reading graph definition from " + pathToGraph + ": " + status.ToString());
	}

	// Add the graph to the session
	status = session->Create(graph_def.graph_def());
	if (!status.ok()) {
		throw std::runtime_error("Error creating graph: " + status.ToString());
	}

	// Read weights from the saved checkpoint
	Tensor checkpointPathTensor(DT_STRING, TensorShape());
	checkpointPathTensor.scalar<std::string>()() = checkpointPath;
	status = session->Run(
	{ { graph_def.saver_def().filename_tensor_name(), checkpointPathTensor }, },
	{},
	{ graph_def.saver_def().restore_op_name() },
		nullptr);
	if (!status.ok()) {
		throw std::runtime_error("Error loading checkpoint from " + checkpointPath + ": " + status.ToString());
	}

	
//---------------TEST VARIABLE MULTIPLY-------------	

	Tensor a(DT_FLOAT, TensorShape());
	a.scalar<float>()() = 3.0;

	Tensor b(DT_FLOAT, TensorShape());
	b.scalar<float>()() = 2.0;

	std::vector<std::pair<string, tensorflow::Tensor>> inputs = {
		{ "a", a }
	};

	// The session will initialize the outputs
	std::vector<tensorflow::Tensor> outputs;

	// Run the session, evaluating our "c" operation from the graph
	status = session->Run(inputs, { "c" }, {}, &outputs);
	if (!status.ok()) {
		std::cout << status.ToString() << "\n";
		return 1;
	}

	// Grab the first output (we only evaluated one graph node: "c")
	// and convert the node to a scalar representation.
	auto output_c = outputs[0].scalar<float>();

	// (There are similar methods for vectors and matrices here:
	// https://github.com/tensorflow/tensorflow/blob/master/tensorflow/core/public/tensor.h)

	// Print the results
	std::cout << outputs[0].DebugString() << "\n"; // Tensor<type: float shape: [] values: 30>
	std::cout << output_c() << "\n"; // 30

//---------------TEST PLACEHOLDER MULTIPLY-------------

	Tensor p(DT_FLOAT, TensorShape({ 1, 1 }));
	auto t_matrix = p.flat<float>();
	t_matrix.setRandom();

	std::vector<std::pair<string, tensorflow::Tensor>> inputsB = {
		{ "placeholder", p }
	};

	// RUN SESSION
	status = session->Run({inputsB}, { "d" }, {}, &outputs);
	if (!status.ok()) {
		std::cout << status.ToString() << "\n";
		return 1;
	}

	auto output_d = outputs[0].scalar<float>();

	std::cout << outputs[0].DebugString() << "\n"; // Tensor<type: float shape: [] values: 30>
	std::cout << output_d() << "\n"; // 30

//---------------TEST PLACEHOLDER DENSE-------------

	// RUN SESSION					
	status = session->Run({ inputsB }, { "output_data/BiasAdd" }, {}, &outputs);
	if (!status.ok()) {
		std::cout << status.ToString() << "\n";
		return 1;
	}

	auto output_e = outputs[0].scalar<float>();

	std::cout << outputs[0].DebugString() << "\n"; // Tensor<type: float shape: [] values: 30>
	std::cout << output_e() << "\n"; // 30


	std::this_thread::sleep_for(std::chrono::milliseconds(10000));

}