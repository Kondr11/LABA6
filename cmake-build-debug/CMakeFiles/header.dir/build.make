# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\CLion 2019.2.3\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Git\lab-06-multithreads

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Git\lab-06-multithreads\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\header.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\header.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\header.dir\flags.make

CMakeFiles\header.dir\sources\source.cpp.obj: CMakeFiles\header.dir\flags.make
CMakeFiles\header.dir\sources\source.cpp.obj: ..\sources\source.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\Git\lab-06-multithreads\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/header.dir/sources/source.cpp.obj"
	D:\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\header.dir\sources\source.cpp.obj /FdCMakeFiles\header.dir\header.pdb /FS -c D:\Git\lab-06-multithreads\sources\source.cpp
<<

CMakeFiles\header.dir\sources\source.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/header.dir/sources/source.cpp.i"
	D:\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe > CMakeFiles\header.dir\sources\source.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Git\lab-06-multithreads\sources\source.cpp
<<

CMakeFiles\header.dir\sources\source.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/header.dir/sources/source.cpp.s"
	D:\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\header.dir\sources\source.cpp.s /c D:\Git\lab-06-multithreads\sources\source.cpp
<<

# Object files for target header
header_OBJECTS = \
"CMakeFiles\header.dir\sources\source.cpp.obj"

# External object files for target header
header_EXTERNAL_OBJECTS =

headerd.lib: CMakeFiles\header.dir\sources\source.cpp.obj
headerd.lib: CMakeFiles\header.dir\build.make
headerd.lib: CMakeFiles\header.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\Git\lab-06-multithreads\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library headerd.lib"
	$(CMAKE_COMMAND) -P CMakeFiles\header.dir\cmake_clean_target.cmake
	D:\MICROS~1\2017\COMMUN~1\VC\Tools\MSVC\1416~1.270\bin\Hostx86\x86\link.exe /lib /nologo /machine:X86 /out:headerd.lib @CMakeFiles\header.dir\objects1.rsp 

# Rule to build all files generated by this target.
CMakeFiles\header.dir\build: headerd.lib

.PHONY : CMakeFiles\header.dir\build

CMakeFiles\header.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\header.dir\cmake_clean.cmake
.PHONY : CMakeFiles\header.dir\clean

CMakeFiles\header.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\Git\lab-06-multithreads D:\Git\lab-06-multithreads D:\Git\lab-06-multithreads\cmake-build-debug D:\Git\lab-06-multithreads\cmake-build-debug D:\Git\lab-06-multithreads\cmake-build-debug\CMakeFiles\header.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\header.dir\depend

