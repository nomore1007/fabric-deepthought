FROM ubuntu:24.04
ARG DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y && apt install ffmpeg pipx git curl build-essential python3 python3-pip python3-setuptools python3-wheel python3-python-telegram-bot -y
WORKDIR "/app"
RUN git clone https://github.com/nomore1007/deepthought-bot.git
