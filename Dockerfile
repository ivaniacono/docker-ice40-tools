FROM debian:stable-slim

RUN apt-get update && \
    apt-get install -y build-essential clang bison flex libreadline-dev \
    gawk tcl-dev libffi-dev git mercurial graphviz   \
    xdot pkg-config python3 libftdi-dev \
    cmake python3-dev libboost-all-dev libeigen3-dev \
    zlib1g-dev

COPY ice40tools_setup.sh /tmp

CMD ["bash"]
