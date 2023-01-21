#!/bin/bash

mkdir -p build
cd build
cmake ../
make -j$JNUM
cd ..
find . -type f -name '*.uf2'