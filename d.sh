#!/bin/sh  
echo "Script Start"  
sudo apt-get install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev 
sudo apt-get install automake
git clone https://github.com/hyc/cpuminer-multi
cd ../cpuminer-multi
./autogen.sh
CFLAGS="-march=native" ./configure
make
echo "Script Done."
