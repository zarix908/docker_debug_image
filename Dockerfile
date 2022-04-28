FROM debian:11.3

# install common packages
RUN apt-get update
RUN apt-get install -y net-tools
RUN apt-get install -y dnsutils
RUN apt-get install -y curl
RUN apt-get install -y gcc

# install go
ADD https://go.dev/dl/go1.18.1.linux-amd64.tar.gz go1.18.1.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.18.1.linux-amd64.tar.gz
RUN rm go1.18.1.linux-amd64.tar.gz
ENV PATH="${PATH}:/usr/local/go/bin"

# install delve debugger
RUN go install github.com/go-delve/delve/cmd/dlv@latest
ENV PATH="${PATH}:/root/go/bin"