#!/bin/bash
blob=28a14264fc963cba460044d4610f2d4b4a04dbd5

wget https://github.com/knights-lab/NINJA-OPS/${blob}/bin/ninja.py -O $PREFIX/bin/ninja.py
chmod +x $PREFIX/bin/ninja.py

binaries="\
ninja_compact \
ninja_filter \
ninja_parse_filtered \
ninja_prep \
"

for i in $binaries; do cp $i $PREFIX/bin/$i && chmod +x $PREFIX/bin/$i; done