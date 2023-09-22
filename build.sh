#!/bin/sh

set -xe

CFLAGS="-Wall -Wextra `pkg-config --cflags raylib`"
LIBS="`pkg-config --cflags raylib` -lm -ldl"

clang++ $CFLAGS -o hyper-snake main.cpp -lraylib
