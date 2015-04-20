FROM golang

RUN mkdir -p /go/src/github.com/hashicorp &&\
    cd /go/src/github.com/hashicorp &&\
    git clone https://github.com/bitglue/terraform.git terraform &&\
    cd terraform &&\
    git checkout 3e41fad899629e64cffbab624f5d70c5a0ce2ba6 &&\
    make updatedeps &&\
    make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
