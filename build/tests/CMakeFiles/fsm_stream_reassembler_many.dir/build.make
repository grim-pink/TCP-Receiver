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
include tests/CMakeFiles/fsm_stream_reassembler_many.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/fsm_stream_reassembler_many.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/fsm_stream_reassembler_many.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/fsm_stream_reassembler_many.dir/flags.make

tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o: tests/CMakeFiles/fsm_stream_reassembler_many.dir/flags.make
tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o: /home/dohana/Desktop/assignment2/tests/fsm_stream_reassembler_many.cc
tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o: tests/CMakeFiles/fsm_stream_reassembler_many.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/dohana/Desktop/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o -MF CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o.d -o CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o -c /home/dohana/Desktop/assignment2/tests/fsm_stream_reassembler_many.cc

tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.i"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/dohana/Desktop/assignment2/tests/fsm_stream_reassembler_many.cc > CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.i

tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.s"
	cd /home/dohana/Desktop/assignment2/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/dohana/Desktop/assignment2/tests/fsm_stream_reassembler_many.cc -o CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.s

# Object files for target fsm_stream_reassembler_many
fsm_stream_reassembler_many_OBJECTS = \
"CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o"

# External object files for target fsm_stream_reassembler_many
fsm_stream_reassembler_many_EXTERNAL_OBJECTS =

tests/fsm_stream_reassembler_many: tests/CMakeFiles/fsm_stream_reassembler_many.dir/fsm_stream_reassembler_many.cc.o
tests/fsm_stream_reassembler_many: tests/CMakeFiles/fsm_stream_reassembler_many.dir/build.make
tests/fsm_stream_reassembler_many: tests/libtcp_reciever_checks.a
tests/fsm_stream_reassembler_many: src/libtcp_reciever.a
tests/fsm_stream_reassembler_many: tests/CMakeFiles/fsm_stream_reassembler_many.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/dohana/Desktop/assignment2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable fsm_stream_reassembler_many"
	cd /home/dohana/Desktop/assignment2/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fsm_stream_reassembler_many.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/fsm_stream_reassembler_many.dir/build: tests/fsm_stream_reassembler_many
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_many.dir/build

tests/CMakeFiles/fsm_stream_reassembler_many.dir/clean:
	cd /home/dohana/Desktop/assignment2/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/fsm_stream_reassembler_many.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_many.dir/clean

tests/CMakeFiles/fsm_stream_reassembler_many.dir/depend:
	cd /home/dohana/Desktop/assignment2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dohana/Desktop/assignment2 /home/dohana/Desktop/assignment2/tests /home/dohana/Desktop/assignment2/build /home/dohana/Desktop/assignment2/build/tests /home/dohana/Desktop/assignment2/build/tests/CMakeFiles/fsm_stream_reassembler_many.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/fsm_stream_reassembler_many.dir/depend

