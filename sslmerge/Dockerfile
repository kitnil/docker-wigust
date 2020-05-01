FROM debian:stretch

RUN apt update && apt install -y git openssl

RUN git clone https://github.com/trimstray/sslmerge && cd sslmerge && ./setup.sh install
