FROM debian:11.3

RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y dnsutils