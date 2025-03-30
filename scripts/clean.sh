#!/bin/zsh

clean() {
  echo "Cleaning up all generated files..."

  rm -rf build
  rm -rf CMakeFiles
  rm -rf cmake_install.cmake
  rm -rf CMakeCache.txt
  rm -rf Makefile

  echo "Done!"
}
