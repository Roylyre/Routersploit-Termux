#!/bin/bash

echo "=================="
echo "Bash script for routersploit installation on termux"
echo "Keep your phone alive and try not to use it while installing"
echo "=================="
sleep 3
apt update -y && apt upgrade -y
apt install autoconf automake bison bzip2 clang cmake coreutils diffutils flex gawk git grep gzip libtool make patch perl sed silversearcher-ag tar wget pkg-config python clang libcrypt libffi git openssl libsodium -y
python -m pip install wheel
SODIUM_INSTALL=system pip install pynacl
git clone https://github.com/threat9/routersploit
mv routersploit $HOME/
pip install -r requirements.txt
pip install -r requirements-dev.txt
echo "Done!"
