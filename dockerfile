FROM ubuntu:24.04
ARG DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y && apt install ffmpeg git python3-python-telegram-bot -y
WORKDIR "/app"
RUN git clone https://github.com/nomore1007/deepthought-bot.git
