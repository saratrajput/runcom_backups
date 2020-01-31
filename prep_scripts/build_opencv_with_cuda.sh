#!/bin/sh

# Update and upgrade system
sudo apt update
sudo apt upgrade

# Install required libraries
# Generic tools
sudo apt install -y build-essential cmake pkg-config unzip yasm git checkinstall

# Image I/O libs
sudo apt install -y libjpeg-dev libpng-dev libtiff-dev libjasper-dev

# Video/Audio Libs - FFMPEG, GSTREAMER, x264
sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libavresample-dev
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt install -y libxvidcore-dev x264 libx264-dev libfaac-dev libmp3lame-dev libtheora-dev
sudo apt install -y libfaac-dev libmp3lame-dev libvorbis-dev

# OpenCore - Adaptive Multi Rate Narrow Band (AMRNB) and Wide Band (AMRWB) speech codec
sudo apt install -y libopencore-amrnb-dev libopencore-amrwb-dev

# Cameras programming interface libs
sudo apt install -y libdc1394-22 libdc1394-22-dev libxine2-dev libv4l-dev v4l-utils
cd /usr/include/linux
sudo ln -s -f ../libv4l1-videodev.h videodev.h
cd ~

# GTK lib for the graphical user functionalites coming from OpenCV highghui module
sudo apt-get install libgtk-3-dev

# Python libraries for python2 and python3:
sudo apt-get install python3-dev
sudo apt install -y python3-testresources

# Parallelism library C++ for CPU
sudo apt-get install libtbb-dev

# Optimization libraries for OpenCV
sudo apt-get install libatlas-base-dev gfortran

# Optional libraries
sudo apt-get install libprotobuf-dev protobuf-compiler
sudo apt-get install libgoogle-glog-dev libgflags-dev
sudo apt-get install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen

# Proceed with installation
cd ~
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.1.0.zip
wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/4.1.0.zip
unzip opencv.zip
unzip opencv_contrib.zip

echo "Create a virtual environtment for the python binding module"
#sudo pip install virtualenv virtualenvwrapper
#sudo rm -rf ~/.cache/pip
#echo "Edit ~/.bashrc"
#export WORKON_HOME=$HOME/.virtualenvs
#export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
#source /usr/local/bin/virtualenvwrapper.sh
#mkvirtualenv cv -p python3
pip3 install numpy

echo "Procced with the installation"
cd opencv-4.1.0
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D INSTALL_C_EXAMPLES=OFF \
-D WITH_TBB=ON \
-D WITH_CUDA=ON \
-D BUILD_opencv_cudacodec=OFF \
-D ENABLE_FAST_MATH=1 \
-D CUDA_FAST_MATH=1 \
-D WITH_CUBLAS=1 \
-D WITH_V4L=ON \
-D WITH_QT=OFF \
-D WITH_OPENGL=ON \
-D WITH_GSTREAMER=ON \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D OPENCV_PC_FILE_NAME=opencv.pc \
-D OPENCV_ENABLE_NONFREE=ON \
-D OPENCV_PYTHON3_INSTALL_PATH=/usr/local/lib/python3.6/dist-packages \
-D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-4.1.0/modules \
-D PYTHON_EXECUTABLE=/usr/bin/python3 \
-D BUILD_EXAMPLES=ON ..

# Proceed with compilation
#make -j12
#sudo make install

# Include libs in environment
#sudo /bin/bash -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/opencv.conf'
#sudo ldconfig
