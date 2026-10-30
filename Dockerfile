FROM ubuntu:latest

RUN apt update && \
	apt install -y software-properties-common && \
	add-apt-repository ppa:longsleep/golang-backports && \
	apt update && \
	apt-get install -y \
		gdb \
		golang-go \
		strace \
		vim
			
