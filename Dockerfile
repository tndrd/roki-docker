FROM ros:humble
SHELL ["/bin/bash", "-c"]

RUN apt-get install -y git cmake

WORKDIR /setup

ENV ROKI_USE_HARDWARE_MOCKS=true
COPY Scripts/ .
RUN bash install-roki-deps.sh

ENV ROKI_WORKDIR=/usr/home
CMD bash roki-bringup.sh