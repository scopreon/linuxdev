FROM ubuntu:latest

RUN apt update && \
	apt install -y software-properties-common && \
	add-apt-repository ppa:longsleep/golang-backports && \
	apt update && \
	apt-get install -y \
		curl \
		gdb \
		golang-go \
		strace \
		vim

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y 
			
