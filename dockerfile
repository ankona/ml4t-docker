FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y build-essential checkinstall
RUN apt-get install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev libgdbm-dev libc6-dev libbz2-dev python3.6 python3-pip
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

ADD ML4T_2020Spring ml4t
WORKDIR /ml4t

ADD martingale martingale
ADD optimize_something optimize_something

ENV PYTHONPATH=/ml4t:/ml4t/martingale:/ml4t/optimize_something
