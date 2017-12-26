#!/bin/sh  
echo "Script Start"  



apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
git clone https://github.com/hyc/cpuminer-multi
cd ./cpuminer-multi
../autogen.sh
CFLAGS="-march=native" ./configure
make

echo "Script Done."
