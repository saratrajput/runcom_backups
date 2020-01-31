#!/bin/sh

#cd ~/Downloads
## Install Cuda-10.0
#wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
#sudo dpkg -i cuda-repo-ubuntu1804_10.0.130-1_amd64.deb
#sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/7fa2af80.pub
#sudo apt-get update
#sudo apt-get install -y cuda-10-0
#echo '# Cuda path' >> ~/.bashrc
#echo 'export PATH=/usr/local/cuda-10.0/bin${PATH:+:${PATH}}' >> ~/.bashrc
#echo 'export LD_LIBRARY_PATH=/usr/local/cuda10.0/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}' >> ~/.bashrc
#source ~/.bashrc

# Install cudnn
cd ~/Downloads
#wget https://developer.nvidia.com/compute/machine-learning/cudnn/secure/7.6.5.32/Production/10.0_20191031/cudnn-10.0-linux-x64-v7.6.5.32.tgz
tar -xzvf cudnn-10.0-linux-x64-v7.6.5.32.tgz
sudo cp cuda/include/cudnn.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn.h /usr/local/cuda/lib64/libcudnn*
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
#
## Install ZED SDK
#wget -O ZED_SDK_Linux_Ubuntu18_cuda100_v2.8.5.run https://download.stereolabs.com/zedsdk/2.8/cu100/ubuntu18
#chmod +x ZED_SDK_Linux_Ubuntu18_cuda100_v2.8.5.run
#./ZED_SDK_Linux_Ubuntu18_cuda100_v2.8.5.run

# Install Zed Python Api
#sudo apt install -y git
#cd ~
#mkdir repos; cd repos
#git clone https://github.com/stereolabs/zed-python-api.git
#cd zed-python-api
#sudo apt install python3-pip
#pip3 install -r requirements.txt
#python3 -m pip install cython numpy
#python3 setup.py build
#sudo python3 setup.py install

# Compile darknet
#cd ~/ros_ws/src/yolo/libdarknet

# Download yolo-v3 weights for testing zed-yolo
wget https://pjreddie.com/media/files/yolov3.weights
