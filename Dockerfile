FROM docker.io/debian:jessie

RUN apt-get update \
&& apt-get install -y apt-utils git python3-pip libssl-dev libffi-dev \
&& pip3 install --no-input --upgrade pip \
&& pip install --no-input --upgrade flask requests paramiko psutil toml streql process_tracing \
&& git clone -b 0.4 --depth 1 https://github.com/curious-containers/cc-container-worker.git /opt

ENV PYTHONPATH $PYTHONPATH:/opt
