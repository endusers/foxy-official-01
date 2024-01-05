FROM ros:foxy

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-desktop=0.9.2-1* \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y --no-install-recommends \
    sudo \
    nano \
    iputils-ping \
    net-tools \
    iproute2 \
    traceroute \
    zip \
    unzip \
    psmisc \
    python3-pip

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-rqt-tf-tree \
    ros-foxy-rqt-robot-steering \
    ros-foxy-xacro \
    ros-foxy-gazebo-ros-pkgs \
    ros-foxy-joint-state-publisher-gui \
    ros-foxy-joy-linux \
    ros-foxy-joy-linux-dbgsym \
    ros-foxy-imu-tools \
    ros-foxy-image-transport \
    ros-foxy-image-transport-plugins \
    ros-foxy-pointcloud-to-laserscan \
    ros-foxy-depthimage-to-laserscan \
    ros-foxy-geographic-msgs \
    libgeographic-dev \
    ros-foxy-rosbag2-storage-mcap \
    ros-foxy-geometry2 \
    ros-foxy-tf2-geometry-msgs \
    python3-pykdl

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-test-msgs \
    ros-foxy-behaviortree-cpp-v3 \
    ros-foxy-ompl \
    ros-foxy-nav2-msgs \
    python3-serial \
    python3-zmq \
    libasio-dev \
    libqt5svg5-dev \
    libdw-dev \
    libdw1 \
    libelf-dev \
    lcov \
    libcommon-sense-perl \
    libgd-perl \
    libjson-perl \
    libjson-xs-perl \
    libperlio-gzip-perl \
    libtypes-serialiser-perl

RUN apt-get update && apt-get install -y --no-install-recommends \
    bzip2-doc \
    fonts-droid-fallback \
    fonts-noto-mono \
    fonts-urw-base35 \
    ghostscript \
    gsfonts \
    libbz2-dev \
    libgraphicsmagick++-q16-12 \
    libgraphicsmagick++1-dev \
    libgraphicsmagick-q16-3 \
    libgraphicsmagick1-dev \
    libgs9 \
    libgs9-common \
    libidn11 \
    libijs-0.35 \
    libjbig2dec0 \
    liblcms2-dev \
    libpaper-utils \
    libpaper1 \
    libwmf-dev \
    libwmf0.2-7 \
    poppler-data \
    graphicsmagick-libmagick-dev-compat \
    libgraphics-magick-perl \
    libamd2 \
    libatlas3-base \
    libbtf1 \
    libcamd2 \
    libccolamd2 \
    libceres-dev \
    libceres1 \
    libcholmod3 \
    libcolamd2 \
    libcxsparse3 \
    libgflags-dev \
    libgflags2.2 \
    libgoogle-glog-dev \
    libgoogle-glog0v5 \
    libgraphblas3 \
    libklu1 \
    libldl2 \
    libmetis5 \
    libmongoose2 \
    librbio2 \
    libspqr2 \
    libsuitesparse-dev \
    libsuitesparseconfig5 \
    libumfpack5 \
    libunwind8

RUN apt-get update && apt-get install -y --no-install-recommends \
    ros-foxy-librealsense2

RUN pip install mcap-ros2-support
RUN pip install fiona==1.8.22
RUN pip install pandas
RUN pip install geopandas

RUN useradd -m docker
RUN echo "docker:docker" | chpasswd
RUN adduser docker sudo

RUN usermod -a -G audio docker
RUN usermod -a -G dialout docker

USER docker

WORKDIR /home/docker

RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
RUN source ~/.bashrc
