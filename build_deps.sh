MAST_DEPS_DIR=${PWD}
PKG_DIR="${MAST_DEPS_DIR}/packages"
NPROCS=1


mkdir ${PKG_DIR}/openmpi-2.1.2/build
cd ${PKG_DIR}/openmpi-2.1.2/build

CC=${MAST_DEPS_DIR}/bin/gcc \
CXX=${MAST_DEPS_DIR}/bin/g++ \
FC=${MAST_DEPS_DIR}/bin/gfortran \
LIBRARY_PATH=${MAST_DEPS_DIR}/lib \
C_INCLUDE_PATH=${MAST_DEPS_DIR}/include \
CPLUS_INCLUDE_PATH=${MAST_DEPS_DIR}/include \
../configure --prefix=${MAST_DEPS_DIR} --enable-mpi-cxx
make -j ${NPROCS}
