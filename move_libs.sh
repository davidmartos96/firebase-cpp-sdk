#!/bin/bash

cd build

cmake --install .

find .. -type f -print > src_file_list.txt
# Remove intermediate build files (.o and .obj) files to save space.
find . -type f -name '*.o' -or -name '*.obj' -print0 | xargs -0 rm -f --
tar -czhf ../firebase-cpp-sdk-linuxx-build.tgz .

