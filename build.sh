#!/bin/bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cd $DIR
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j4
cd $DIR
bash compile.sh
