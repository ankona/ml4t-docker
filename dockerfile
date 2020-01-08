FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential checkinstall
RUN apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev libgdbm-dev libc6-dev libbz2-dev python3.6 python3-pip
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
RUN echo "alias python=python3" > ~/.bash_aliases

WORKDIR /ml4t

ENV PYTHONPATH=/ml4t:/ml4t/martingale:/ml4t/optimize_something
