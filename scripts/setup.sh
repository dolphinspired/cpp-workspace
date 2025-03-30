#!/bin/zsh

setup() {
  echo "Generating build configuration..."

  export CMAKE_C_COMPILER=/ucrt64/bin/gcc
  export CMAKE_CXX_COMPILER=/ucrt64/bin/g++

  mkdir -p build
  cmake .

  echo "Done!"
}
