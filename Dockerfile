FROM ubuntu:24.04

RUN apt-get update -y && apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
                build-essential python3-dev python3-pip \
    && apt-get clean

RUN pip3 --no-cache-dir install poetry --break-system-packages

WORKDIR /app
