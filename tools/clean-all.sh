#!/bin/bash
set -e

# This is intended to be called from the directory containing all of our various
# Bazel example repos.

# ./bazel-resources/tools/clean-all.sh

find . -maxdepth 2 -name WORKSPACE.bazel \( -execdir bazel clean --expunge \; -o -execdir bazel shutdown \; \)

find . -maxdepth 3 -name 'bazel-*' -type l -print -delete

find . -maxdepth 2 -name package.json -execdir rm -rf node_modules \;
