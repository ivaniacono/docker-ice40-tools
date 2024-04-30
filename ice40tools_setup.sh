#!/bin/bash

NEXTPNR_COMMIT = "nextpnr-0.7"
YOSIS_COMMIT = "yosys-0.40"
IVERILOG_COMMIT = "v11-branch"

git clone https://github.com/cliffordwolf/icestorm.git icestorm
cd icestorm
make -j$(nproc)
make install
cd ..

git clone https://github.com/YosysHQ/nextpnr.git nextpnr
cd nextpnr
git checkout $NEXTPNR_COMMIT
cmake . -DARCH=ice40
make -j$(nproc)
make install
cd ..

git clone https://github.com/YosysHQ/yosys.git yosys
cd yosys
git checkout $YOSIS_COMMIT
make -j$(nproc)
make install
cd ..

apt install -y iverilog gtkwave