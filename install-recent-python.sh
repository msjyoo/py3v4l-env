#!/usr/bin/env bash
set -eu -o pipefail
shopt -s failglob

pushd /usr/local/src
wget "https://www.python.org/ftp/python/$1/Python-$1.tar.xz"
tar xJf "Python-$1.tar.xz"
rm "Python-$1.tar.xz"
pushd "Python-$1"
./configure
make -j
make test -j16
popd
popd
