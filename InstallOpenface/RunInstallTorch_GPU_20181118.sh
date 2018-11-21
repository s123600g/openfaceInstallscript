# !/bin/bash
PATH=/sbin:/bin:/usr/bin

#echo "下載Torch安裝包."
#透過Git指令 > git clone 'URL' < 下載 GitHub 上的Torch 完整安裝包，並安裝Torch
#sudo git clone https://github.com/torch/distro.git ~/src/torch --recursive
#cd ~/src/torch
#sudo bash install-deps
#sudo ./install.sh

#echo ""
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

#sleep 1s

#echo "安裝luarocks."

#安裝luarocks
#sudo apt-get install -y luarocks

#echo "設定Torch目錄權限."
#賦予安裝再家目錄底下的torch目錄root權限
#sudo chmod -R 777 ~/src/torch

#sleep 1s

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# 安裝Torch所需要用到的套件，有分CPU與GPU所需的套件安裝
# CPU Version
# If you don't want to use GPU , You should install "dpnn" "nn" "optim" "csvigo" for CPU version

echo "安裝Torch套件：dpnn | nn | optim | csvigo."
echo "Torch package for CPU version."

echo "Install 'dpnn'."
sudo ~/src/torch/install/bin/luarocks install dpnn

sleep 1s

echo "Install 'nn'."
sudo ~/src/torch/install/bin/luarocks install nn   

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# if sudo ~/torch/install/bin/luarocks install "nn" can't work
#sudo git clone https://github.com/torch/nn
#cd ~/torch/nn
#sudo luarocks make rocks/nn-scm-1.rockspec
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

echo "Install 'optim'."
sudo ~/src/torch/install/bin/luarocks install optim

sleep 1s

echo "Install 'csvigo'."
sudo ~/src/torch/install/bin/luarocks install csvigo 

sleep 1s

echo ""

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Only Use GPU Version
# You need to be install Nvidia CUDA , then can install cutorch cunn tds torchx optnet FBLuaLib

echo "安裝Torch套件：cutorch | cunn | tds | torchx | optnet ."
echo "Torch package for CPU version."
echo ""

echo "Install 'cutorch'."
sudo ~/src/torch/install/bin/luarocks install cutorch # GPU

sleep 1s

echo "Install 'cunn'."
sudo ~/src/torch/install/bin/luarocks install cunn # GPU

# if sudo ~/torch/install/bin/luarocks install cunn can't work
#git clone https://github.com/torch/cunn
#cd cunn
#luarocks make rocks/cunn-scm-1.rockspec

sleep 1s

echo "Install 'FBLuaLib'."
# FBLuaLib: installation
# If you're on Ubuntu 13.10 or Ubuntu 14.04 (or higher), you can use the one-stop installation script:
sudo curl -sk https://raw.githubusercontent.com/facebook/fblualib/master/install_all.sh | bash

sleep 1s

echo "Install 'tds'."
sudo ~/src/torch/install/bin/luarocks install tds # GPU

sleep 1s

echo "Install 'torchx'."
sudo ~/src/torch/install/bin/luarocks install torchx # GPU

sleep 1s

echo "Install 'optnet'."
sudo ~/src/torch/install/bin/luarocks install optnet # GPU

sleep 1s

cd ~/OpenFaceInstallScript-20181118/InstallOpenface

