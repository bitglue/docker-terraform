FROM golang

RUN mkdir -p /go/src/github.com/hashicorp &&\
    cd /go/src/github.com/hashicorp &&\
    git clone https://github.com/bitglue/terraform.git terraform &&\
    cd terraform &&\
    git checkout a646d50d41776ad06b11ae759454c43eb4b52bc8 &&\
    make updatedeps &&\
    make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
