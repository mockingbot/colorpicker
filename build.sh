#! /usr/bin/env bash

echo -e '\033[32mgenerate cmake files\033[39m'

build_dir="tmp/build_mac"

mkdir -p $build_dir
pushd $build_dir >/dev/null
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ../..
popd >/dev/null

echo -e '\033[32mninja build\033[39m'

pushd $build_dir > /dev/null
ninja
popd > /dev/null

