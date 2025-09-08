FROM ubuntu:24.04

ENV DEBIAN_FRONTDEND=non-interactive

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    autoconf \
    automake \
    curl \
    build-essential \
    git \
    libtool \
    make \
    pkg-config \
    ca-certificates \
    software-properties-common \
    clang-format \
    clang-tidy \
    stlink-tools \
    cmake \
    ninja-build && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /home/dev
# Clone, build, and install CppUTest
WORKDIR /home
RUN git clone https://github.com/cpputest/cpputest.git && \
    cd cpputest && \
    ./autogen.sh && \
    ./configure && \
    make install

# Set the CPPUTEST_HOME environment variable
ENV CPPUTEST_HOME=/home/cpputest
