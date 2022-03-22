#!/bin/bash
set -e

# This is intended to be called from the directory containing all of our various
# Bazel example repos.

# ./bazel-resources/tools/build-all.sh

find . -name exercise.sh -maxdepth 2 -execdir ./exercise.sh \;
