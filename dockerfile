FROM ubuntu:24.04
ARG DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y
RUN apt install ffmpeg pipx git build-essential python3 python3-pip python3-setuptools python3-wheel python3-python-telegram-bot -y
WORKDIR "/app"
RUN git clone https://github.com/danielmiessler/fabric.git
RUN git clone https://github.com/nomore1007/deepthought-bot.git
RUN pipx install fabric/
ENV PATH="${PATH}:/root/.local/bin/"
RUN yes " " | fabric --setup
