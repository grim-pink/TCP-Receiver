# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /snap/cmake/1333/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1333/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dohana/Desktop/assignment2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dohana/Desktop/assignment2/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/recv_close.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/recv_close.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/recv_close.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/recv_close.dir/flags.make

tests/CMakeFiles/recv_close.dir/recv_close.cc.o: tests/CMakeFiles/recv_close.dir/flags.make
tests/CMakeFiles/recv_close.dir/recv_close.cc.o: /home/dohana/Desktop/assignment2/tests/recv_close.cc
tests/CMakeFiles/recv_close.dir/recv_close.cc.o: tests/CMakeFiles/recv_close.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/dohana/Desktop/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/recv_close.dir/recv_close.cc.o"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/recv_close.dir/recv_close.cc.o -MF CMakeFiles/recv_close.dir/recv_close.cc.o.d -o CMakeFiles/recv_close.dir/recv_close.cc.o -c /home/dohana/Desktop/assignment2/tests/recv_close.cc

tests/CMakeFiles/recv_close.dir/recv_close.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/recv_close.dir/recv_close.cc.i"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dohana/Desktop/assignment2/tests/recv_close.cc > CMakeFiles/recv_close.dir/recv_close.cc.i

tests/CMakeFiles/recv_close.dir/recv_close.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/recv_close.dir/recv_close.cc.s"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dohana/Desktop/assignment2/tests/recv_close.cc -o CMakeFiles/recv_close.dir/recv_close.cc.s

# Object files for target recv_close
recv_close_OBJECTS = \
"CMakeFiles/recv_close.dir/recv_close.cc.o"

# External object files for target recv_close
recv_close_EXTERNAL_OBJECTS =

tests/recv_close: tests/CMakeFiles/recv_close.dir/recv_close.cc.o
tests/recv_close: tests/CMakeFiles/recv_close.dir/build.make
tests/recv_close: tests/libtcp_reciever_checks.a
tests/recv_close: src/libtcp_reciever.a
tests/recv_close: tests/CMakeFiles/recv_close.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/dohana/Desktop/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recv_close"
	cd /home/dohana/Desktop/assignment2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recv_close.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/recv_close.dir/build: tests/recv_close
.PHONY : tests/CMakeFiles/recv_close.dir/build

tests/CMakeFiles/recv_close.dir/clean:
	cd /home/dohana/Desktop/assignment2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/recv_close.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/recv_close.dir/clean

tests/CMakeFiles/recv_close.dir/depend:
	cd /home/dohana/Desktop/assignment2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dohana/Desktop/assignment2 /home/dohana/Desktop/assignment2/tests /home/dohana/Desktop/assignment2/build /home/dohana/Desktop/assignment2/build/tests /home/dohana/Desktop/assignment2/build/tests/CMakeFiles/recv_close.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/recv_close.dir/depend

