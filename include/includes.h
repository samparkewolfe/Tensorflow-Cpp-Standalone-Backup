#pragma once

#include <string>
#include <vector>
#include <sys/stat.h>
#include <atomic>
#include <algorithm>
#include <iostream>
#include <string>
#include <thread>
#include <chrono>
#include <cstdlib>

#if (defined (_WIN32) || defined (_WIN64))
#include <Windows.h>
#include <stdio.h>
#include <tchar.h>
#include <sdkddkver.h>
#include <conio.h>
#define SLEEP( milliseconds ) Sleep( (DWORD) milliseconds )
#define COMPILER_MSVC
#define NOMINMAX
#endif

#if (defined (LINUX) || defined (__linux__)) || defined __APPLE__
#include <unistd.h>
#include <termios.h>
#include <ncurses.h>	
#include <dirent.h>
#define SLEEP( milliseconds ) usleep( (unsigned long) (milliseconds * 1000.0) )
#endif
