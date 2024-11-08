FROM ubuntu:24.04
ARG DEBIAN_FRONTEND noninteractive
RUN apt update && apt upgrade -y && apt install ffmpeg pipx git build-essential python3 python3-pip python3-setuptools python3-wheel python3-python-telegram-bot -y
WORKDIR "/app"
RUN curl -L https://github.com/danielmiessler/fabric/releases/latest/download/fabric-linux-arm64 > fabric && chmod +x fabric && ./fabric --version
RUN git clone https://github.com/nomore1007/deepthought-bot.git
RUN pipx install fabric/
ENV PATH="${PATH}:/root/.local/bin/"
RUN yes " " | fabric --setup
