#!/bin/bash
# Run this from within a bash shell

set +e

MPP_PWD=`pwd`
MPP_TOP=${MPP_PWD}/../../..

source ../opt_proc.sh

# generate Makefile
cmake -DCMAKE_BUILD_TYPE=Release \
      -DRKPLATFORM=ON \
      -G "Unix Makefiles" \
      ${MPP_TOP}
