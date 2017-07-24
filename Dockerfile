FROM docker.io/debian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
&& apt-get install -y git python3-pip libssl-dev libffi-dev \
&& pip3 install --no-input --upgrade pip \
&& pip install --no-input --user --upgrade git+https://github.com/curious-containers/cc-container-worker.git@0.12
