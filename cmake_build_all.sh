#!/bin/bash
set -e

BUILDDIR=${1:-../build_asl}

#
# CLANG
#

# local BOOST
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=OFF TOOLSET=clang++ BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=OFF TOOLSET=clang++ BUILDMODE=DEBUG   sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=OFF TOOLSET=clang++ BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=OFF TOOLSET=clang++ BUILDMODE=DEBUG   sh cmake_build.sh

# system BOOST
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=ON  TOOLSET=clang++ BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=ON  TOOLSET=clang++ BUILDMODE=DEBUG   sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=ON  TOOLSET=clang++ BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=ON  TOOLSET=clang++ BUILDMODE=DEBUG   sh cmake_build.sh

#
# GCC
#

# local BOOST
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=OFF TOOLSET=g++     BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=OFF TOOLSET=g++     BUILDMODE=DEBUG   sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=OFF TOOLSET=g++     BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=OFF TOOLSET=g++     BUILDMODE=DEBUG   sh cmake_build.sh

# system BOOST
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=ON  TOOLSET=g++     BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=ON  USE_SYSTEM_BOOST=ON  TOOLSET=g++     BUILDMODE=DEBUG   sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=ON  TOOLSET=g++     BUILDMODE=RELEASE sh cmake_build.sh
BUILDDIR=${BUILDDIR} USE_STD_THREAD_LOCAL=OFF USE_SYSTEM_BOOST=ON  TOOLSET=g++     BUILDMODE=DEBUG   sh cmake_build.sh

