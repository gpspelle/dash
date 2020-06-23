# Pull base image.
FROM python:3.7-buster
# Install.
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential tcl && \
  apt-get install -y software-properties-common && \
  apt-get install -y curl git htop man unzip vim wget python3-pip && \
  rm -rf /var/lib/apt/lists/*
RUN \
  git clone https://github.com/gpspelle/vimrc ~/.vim_runtime && \
  sh ~/.vim_runtime/install_awesome_vimrc.sh
RUN \
  pip3 install dash==1.13.3 pandas

WORKDIR /home
CMD ["python3", "app.py"]

