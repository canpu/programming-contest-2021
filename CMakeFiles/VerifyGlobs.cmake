# CMAKE generated file: DO NOT EDIT!
# Generated by CMake Version 3.20
cmake_policy(SET CMP0009 NEW)

# PROJECT_SRCS at CMakeLists.txt:16 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/Users/ellenwang/Desktop/programming-contest-2021/src/*.cpp")
set(OLD_GLOB
  "/Users/ellenwang/Desktop/programming-contest-2021/src/joiner.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/main/harness.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/main/main.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/main/query2SQL.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/operators.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/parser.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/relation.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/statistics.cpp"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/utils.cpp"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/ellenwang/Desktop/programming-contest-2021/CMakeFiles/cmake.verify_globs")
endif()

# PROJECT_SRCS at CMakeLists.txt:16 (file)
file(GLOB_RECURSE NEW_GLOB LIST_DIRECTORIES false "/Users/ellenwang/Desktop/programming-contest-2021/src/include/*.h")
set(OLD_GLOB
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/joiner.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/omp.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/operators.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/parser.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/relation.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/statistics.h"
  "/Users/ellenwang/Desktop/programming-contest-2021/src/include/utils.h"
  )
if(NOT "${NEW_GLOB}" STREQUAL "${OLD_GLOB}")
  message("-- GLOB mismatch!")
  file(TOUCH_NOCREATE "/Users/ellenwang/Desktop/programming-contest-2021/CMakeFiles/cmake.verify_globs")
endif()
