#!/bin/bash

set -exu

gn gen out/Default
ninja -C out/Default main
# ninja -C out/Default src:main

exit 0;
if [ ! -d 'release' ] ; then
  mkdir 'release';
fi

cd release
cmake ..