# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/hgupta110/CPP_basics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/hgupta110/CPP_basics/out/build/cpp_basics

# Include any dependencies generated for this target.
include data_structures/CMakeFiles/data_structures.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include data_structures/CMakeFiles/data_structures.dir/compiler_depend.make

# Include the progress variables for this target.
include data_structures/CMakeFiles/data_structures.dir/progress.make

# Include the compile flags for this target's objects.
include data_structures/CMakeFiles/data_structures.dir/flags.make

data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o: data_structures/CMakeFiles/data_structures.dir/flags.make
data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o: /Users/hgupta110/CPP_basics/data_structures/my_shared_ptr.cpp
data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o: data_structures/CMakeFiles/data_structures.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/hgupta110/CPP_basics/out/build/cpp_basics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o"
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o -MF CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o.d -o CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o -c /Users/hgupta110/CPP_basics/data_structures/my_shared_ptr.cpp

data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/data_structures.dir/my_shared_ptr.cpp.i"
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/hgupta110/CPP_basics/data_structures/my_shared_ptr.cpp > CMakeFiles/data_structures.dir/my_shared_ptr.cpp.i

data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/data_structures.dir/my_shared_ptr.cpp.s"
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/hgupta110/CPP_basics/data_structures/my_shared_ptr.cpp -o CMakeFiles/data_structures.dir/my_shared_ptr.cpp.s

# Object files for target data_structures
data_structures_OBJECTS = \
"CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o"

# External object files for target data_structures
data_structures_EXTERNAL_OBJECTS =

data_structures/libdata_structures.a: data_structures/CMakeFiles/data_structures.dir/my_shared_ptr.cpp.o
data_structures/libdata_structures.a: data_structures/CMakeFiles/data_structures.dir/build.make
data_structures/libdata_structures.a: data_structures/CMakeFiles/data_structures.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/hgupta110/CPP_basics/out/build/cpp_basics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libdata_structures.a"
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && $(CMAKE_COMMAND) -P CMakeFiles/data_structures.dir/cmake_clean_target.cmake
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/data_structures.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
data_structures/CMakeFiles/data_structures.dir/build: data_structures/libdata_structures.a
.PHONY : data_structures/CMakeFiles/data_structures.dir/build

data_structures/CMakeFiles/data_structures.dir/clean:
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures && $(CMAKE_COMMAND) -P CMakeFiles/data_structures.dir/cmake_clean.cmake
.PHONY : data_structures/CMakeFiles/data_structures.dir/clean

data_structures/CMakeFiles/data_structures.dir/depend:
	cd /Users/hgupta110/CPP_basics/out/build/cpp_basics && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/hgupta110/CPP_basics /Users/hgupta110/CPP_basics/data_structures /Users/hgupta110/CPP_basics/out/build/cpp_basics /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures /Users/hgupta110/CPP_basics/out/build/cpp_basics/data_structures/CMakeFiles/data_structures.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : data_structures/CMakeFiles/data_structures.dir/depend

