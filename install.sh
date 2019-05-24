#!/bin/bash
# used for init env on clean Ubuntu Server
sudo apt-get update
sudo apt-get install qemu
sudo apt-get install make
sudo apt-get install gcc
sudo apt-get install g++
sudo apt-get install build-essential
sudo apt-get install gcc-5.4-multilib
sudo apt-get install gcc-multilib
sudo apt install python3-pip
sudo apt install python
pip3 install https://github.com/shadowsocks/shadowsocks/archive/master.zip
sudo printf "{
    \"server\":\"172.31.7.30\",
    \"server_port\":8388,
    \"local_address\":\"127.0.0.1\",
    \"local_port\":1080,
    \"password\":\"123456\",
    \"timeout\":300,
    \"method\":\"aes-256-cfb\"
}" >/etc/shadowsocks.json
/usr/local/bin/ssserver -c /etc/shadowsocks.json -d start
