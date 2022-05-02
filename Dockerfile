FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive
ENV TERM=xterm-256color
ENV TZ Asia/Seoul

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && \
    apt-get update && apt upgrade -y && \
    apt-get install -y apt-utils lsb-release apt-transport-https ca-certificates dnsutils iputils-ping locales openssh-server software-properties-common \
    autojump bat byobu curl fasd fd-find fonts-powerline git jq netcat net-tools ripgrep sudo sshpass tmux traceroute vim unzip zsh && \
    apt-get clean && rm -rf /var/lib/apt/lists/*
