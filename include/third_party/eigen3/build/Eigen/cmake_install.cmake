# Install script for directory: /home/eigen-eigen-5a0156e40feb/Eigen

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE FILE FILES
    "/home/eigen-eigen-5a0156e40feb/Eigen/Cholesky"
    "/home/eigen-eigen-5a0156e40feb/Eigen/CholmodSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Core"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Dense"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Eigen"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Eigenvalues"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Geometry"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Householder"
    "/home/eigen-eigen-5a0156e40feb/Eigen/IterativeLinearSolvers"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Jacobi"
    "/home/eigen-eigen-5a0156e40feb/Eigen/LU"
    "/home/eigen-eigen-5a0156e40feb/Eigen/MetisSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/OrderingMethods"
    "/home/eigen-eigen-5a0156e40feb/Eigen/PaStiXSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/PardisoSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/QR"
    "/home/eigen-eigen-5a0156e40feb/Eigen/QtAlignedMalloc"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SPQRSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SVD"
    "/home/eigen-eigen-5a0156e40feb/Eigen/Sparse"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SparseCholesky"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SparseCore"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SparseLU"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SparseQR"
    "/home/eigen-eigen-5a0156e40feb/Eigen/StdDeque"
    "/home/eigen-eigen-5a0156e40feb/Eigen/StdList"
    "/home/eigen-eigen-5a0156e40feb/Eigen/StdVector"
    "/home/eigen-eigen-5a0156e40feb/Eigen/SuperLUSupport"
    "/home/eigen-eigen-5a0156e40feb/Eigen/UmfPackSupport"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/eigen3/Eigen" TYPE DIRECTORY FILES "/home/eigen-eigen-5a0156e40feb/Eigen/src" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

