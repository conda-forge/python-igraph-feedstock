#!/bin/env bash

# Build python-igraph against the externally provided libigraph from conda-forge
# Use pkg-config to discover headers and libraries.
export IGRAPH_USE_PKG_CONFIG=1

# Ensure pkg-config can find igraph.pc from the host env
export PKG_CONFIG_PATH="${PREFIX}/lib/pkgconfig:${PKG_CONFIG_PATH}"

${PYTHON} -m pip install --no-deps --no-build-isolation --ignore-installed . -vvv
