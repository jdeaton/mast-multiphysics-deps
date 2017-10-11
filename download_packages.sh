#!/bin/bash

# Directory we will store packges in.
PKG_DIR="${PWD}/packages"

# Function to download from url to file.
download() {
  cd ${PKG_DIR} && { curl -O $1 ; cd -; }
}

# Create directory to store packages if it doesn't exist.
if [ ! -d ${PKG_DIR} ]; then
  mkdir ${PKG_DIR}
fi

# ---------------------------------------------------------------------------- #
# GCC-6.4 Compiler.
# ---------------------------------------------------------------------------- #
# GCC Source.
if [ ! -f ${PKG_DIR}/gcc-6.4.0.tar.gz ]; then
  download https://gcc.gnu.org/pub/gcc/releases/gcc-6.4.0/gcc-6.4.0.tar.gz || exit 1
fi
# GCC Prerequisites.
if [ ! -f ${PKG_DIR}/mpfr-2.4.2.tar.bz2 ]; then
  download https://gcc.gnu.org/pub/gcc/infrastructure/mpfr-2.4.2.tar.bz2 || exit 1
fi
if [ ! -f ${PKG_DIR}/gmp-4.3.2.tar.bz2 ]; then
  download https://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2 || exit 1
fi
if [ ! -f ${PKG_DIR}/mpc-0.8.1.tar.gz ]; then
  download https://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz || exit 1
fi
if [ ! -f ${PKG_DIR}/isl-0.15.tar.bz2 ]; then
  download https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.15.tar.bz2 || exit 1
fi


# ---------------------------------------------------------------------------- #
# OpenMPI 1.8.5
# ---------------------------------------------------------------------------- #
# OpenMPI source.
if [ ! -f ${PKG_DIR}/openmpi-2.1.2.tar.gz ]; then
  download https://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-2.1.2.tar.gz || exit 1
fi

# ---------------------------------------------------------------------------- #
# PETSc 3.6.4
# ---------------------------------------------------------------------------- #
# PETSC Source.
if [ ! -f ${PKG_DIR}/petsc-3.6.4.tar.gz ]; then
  download http://ftp.mcs.anl.gov/pub/petsc/release-snapshots/petsc-3.6.4.tar.gz || exit 1
fi

#
# # MPFR=mpfr-2.4.2
# # GMP=gmp-4.3.2
# # MPC=mpc-0.8.1
# #
# # wget ftp://gcc.gnu.org/pub/gcc/infrastructure/$MPFR.tar.bz2 || exit 1
# # tar xjf $MPFR.tar.bz2 || exit 1
# # ln -sf $MPFR mpfr || exit 1
# #
# # wget ftp://gcc.gnu.org/pub/gcc/infrastructure/$GMP.tar.bz2 || exit 1
# # tar xjf $GMP.tar.bz2  || exit 1
# # ln -sf $GMP gmp || exit 1
# #
# # wget ftp://gcc.gnu.org/pub/gcc/infrastructure/$MPC.tar.gz || exit 1
# # tar xzf $MPC.tar.gz || exit 1
# # ln -sf $MPC mpc || exit 1
