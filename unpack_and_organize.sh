#!/bin/bash

PKG_DIR="${PWD}/packages"

unpack_gz() {
  cd ${PKG_DIR} && { tar -xzf $1 ; cd -; }
}

unpack_bz2() {
  cd ${PKG_DIR} && { tar -xzf $1 ; cd -; }
}

# ---------------------------------------------------------------------------- #
# GCC-6.4 Compiler.
# ---------------------------------------------------------------------------- #
# GCC Source.
if [ ! -d ${PKG_DIR}/gcc-6.4.0 ]; then
  unpack_gz gcc-6.4.0.tar.gz || exit 1
fi
# GCC Prereqs
if [ ! -d ${PKG_DIR}/mpfr-2.4.2 ]; then
  unpack_bz2 mpfr-2.4.2.tar.bz2 || exit 1
fi
if [ ! -d ${PKG_DIR}/gmp-4.3.2 ]; then
  unpack_bz2 gmp-4.3.2.tar.bz2 || exit 1
fi
if [ ! -d ${PKG_DIR}/mpc-0.8.1 ]; then
  unpack_gz mpc-0.8.1.tar.gz || exit 1
fi
if [ ! -d ${PKG_DIR}/isl-0.15 ]; then
  unpack_bz2 isl-0.15.tar.bz2 || exit 1
fi
# Create links from prerequisites into gcc source. GCC installation will then
# automatically build these dependencies.
ln -sf ${PKG_DIR}/mpfr-2.4.2 ${PKG_DIR}/gcc-6.4.0/mpfr || exit 1
ln -sf ${PKG_DIR}/gmp-4.3.2 ${PKG_DIR}/gcc-6.4.0/gmp || exit 1
ln -sf ${PKG_DIR}/mpc-0.8.1 ${PKG_DIR}/gcc-6.4.0/mpc || exit 1
ln -sf ${PKG_DIR}/isl-0.15 ${PKG_DIR}/gcc-6.4.0/isl || exit 1

# ---------------------------------------------------------------------------- #
# OpenMPI 1.8.5
# ---------------------------------------------------------------------------- #
# OpenMPI source.
if [ ! -d ${PKG_DIR}/openmpi-2.1.2 ]; then
  unpack_gz openmpi-2.1.2.tar.gz || exit 1
fi

# ---------------------------------------------------------------------------- #
# PETSc 3.6.4
# ---------------------------------------------------------------------------- #
# PETSC Source.
if [ ! -d ${PKG_DIR}/petsc-3.6.4 ]; then
  unpack_gz petsc-3.6.4.tar.gz || exit 1
fi
