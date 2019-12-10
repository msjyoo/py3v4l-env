FROM ubuntu:bionic

RUN (export DEBIAN_FRONTEND=noninteractive; apt-get update -y && apt-get install -y \
    apt-utils \
    dialog \
    tzdata \
    wget \
    curl \
    build-essential \
    zlib1g-dev \
    libsqlite3-dev \
    libssl-dev \
    libreadline-gplv2-dev \
    libncursesw5-dev \
    libncurses5-dev \
    tk-dev \
    libgdbm-dev \
    libc6-dev \
    libbz2-dev \
    libffi-dev \
    liblzma-dev \
    uuid-dev \
    libgdbm-compat-dev)

COPY install-recent-python.sh /
RUN chmod 755 /install-recent-python.sh

RUN /install-recent-python.sh 3.8.0

RUN /install-recent-python.sh 3.7.5
RUN /install-recent-python.sh 3.7.4
RUN /install-recent-python.sh 3.7.3
RUN /install-recent-python.sh 3.7.2
RUN /install-recent-python.sh 3.7.1
RUN /install-recent-python.sh 3.7.0
