#!/bin/bash

MAST_DEPS_DIR=${PWD}
PKG_DIR="${MAST_DEPS_DIR}/packages"
NPROCS=4

cd ${PKG_DIR}/gcc-6.4.0
mkdir build
cd build
../configure --prefix=${MAST_DEPS_DIR}
