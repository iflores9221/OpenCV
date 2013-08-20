arch=$(uname -m)
if [ "$arch" == "i686" -o "$arch" == "i386" -o "$arch" == "i486" -o "$arch" == "i586" ]; then
flag=1
else
flag=0
fi
echo "Installing OpenCV 2.4.5"
#mkdir OpenCV
#cd OpenCV-2.4.5
echo "Removing any pre-installed ffmpeg and x264"
sudo apt-get -y remove ffmpeg x264 libx264-dev
echo "Installing Dependenices"
sudo apt-get -y install libopencv-dev
sudo apt-get -y install build-essential
sudo apt-get -y install checkinstall 
sudo apt-get -y install cmake 
sudo apt-get -y install pkg-config 
sudo apt-get -y install yasm
sudo apt-get -y install libtiff4-dev 
sudo apt-get -y install libjpeg-dev
sudo apt-get -y install libjasper-dev
sudo apt-get -y install libavcodec-dev
sudo apt-get -y install libavformat-dev
sudo apt-get -y install libswscale-dev
sudo apt-get -y install libdc1394-22-dev
sudo apt-get -y install libxine-dev
sudo apt-get -y install libgstreamer0.10-dev
sudo apt-get -y install libgstreamer-plugins-base0.10-dev
sudo apt-get -y install libv4l-dev
sudo apt-get -y install python-dev
sudo apt-get -y install python-numpy
sudo apt-get -y install libtbb-dev
sudo apt-get -y install libqt4-dev
sudo apt-get -y install libgtk2.0-dev
sudo apt-get -y install libfaac-dev
sudo apt-get -y install libmp3lame-dev
sudo apt-get -y install libopencore-amrnb-dev
sudo apt-get -y install libopencore-amrwb-dev
sudo apt-get -y install libtheora-dev
sudo apt-get -y install libvorbis-dev
sudo apt-get -y install libxvidcore-dev
sudo apt-get -y install x264 v4l-utils
sudo apt-get -y install ffmpeg
sudo apt-get -y install gstreamer0.10-plugins-base
sudo apt-get -y install gstreamer0.10-plugins-bad-multiverse
sudo apt-get -y install gstreamer0.10-plugins-good  
echo "Downloading OpenCV 2.4.5"
wget -O OpenCV-2.4.5.tar.gz http://sourceforge.net/projects/opencvlibrary/files/opencv-unix/2.4.5/opencv-2.4.5.tar.gz/download

echo "Finished downloading OpenCv-2.4.5. Now just build by uncommenting the rest of the lines in the script"
#cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D BUILD_EXAMPLES=ON -D WITH_QT=ON -D WITH_OPENGL=ON ..
#make -j4
#sudo make install
#sudo sh -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
#sudo ldconfig
#echo "OpenCV 2.4.5 ready to be used"
