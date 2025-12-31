# Build

python scripts/gha/build_desktop.py --linux_abi="c++11" --config="Release"

# Install and tar

sh move_libs.sh

# Package

rm -rf firebase-cpp-sdk-linux-package

build_scripts/desktop/package.sh -D -b firebase-cpp-sdk-linuxx-build.tgz -o firebase-cpp-sdk-linux-package -p linux -t /usr/bin -d "x86_64/cxx11" -P python3 -j 8

# Copy

cp -r firebase-cpp-sdk-linux-package/* /home/david/opt/firebase_sdk