#!/usr/bin/env sh

mkdir clib
cd meshoptimizer
rm -rf build
mkdir -p build
cmake -B build/debug -DMESHOPT_INSTALL=OFF -DMESHOPT_BUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=Debug .
make -C build/debug
mv build/debug/libmeshoptimizer.a ../clib/debug.a
cmake -B build/release -DMESHOPT_INSTALL=OFF -DMESHOPT_BUILD_SHARED_LIBS=OFF -DCMAKE_BUILD_TYPE=Release .
make -C build/release
mv build/release/libmeshoptimizer.a ../clib/release.a
