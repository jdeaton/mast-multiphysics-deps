#!/bin/bash

PKG_DIR="${PWD}/packages"

mkdir ${PKG_DIR}

# check_for_file() {
#   FILE=$1
#   if [ -f ${FILE} ]; then
#     return 0
#   else
#     return 1
#   fi
# }

download() {
  cd ${PKG_DIR} && { curl -O $1 ; cd -; }
}

# ---------------------------------------------------------------------------- #
# GCC-6.4 Compiler.
# ---------------------------------------------------------------------------- #
# GCC Source.
download https://gcc.gnu.org/pub/gcc/releases/gcc-6.4.0/gcc-6.4.0.tar.gz || exit 1
# GCC Prerequisites.
download https://gcc.gnu.org/pub/gcc/infrastructure/mpfr-2.4.2.tar.bz2 || exit 1
download https://gcc.gnu.org/pub/gcc/infrastructure/gmp-4.3.2.tar.bz2 || exit 1
download https://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz || exit 1
download https://gcc.gnu.org/pub/gcc/infrastructure/isl-0.15.tar.bz2 || exit 1


# PETSC Source.
# download http://ftp.mcs.anl.gov/pub/petsc/release-snapshots/petsc-3.6.4.tar.gz || exit 1
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
