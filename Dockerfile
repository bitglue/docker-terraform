FROM golang

RUN mkdir -p /go/src/github.com/hashicorp &&\
    cd /go/src/github.com/hashicorp &&\
    git clone https://github.com/bitglue/terraform.git terraform &&\
    cd terraform &&\
    git checkout 9bc2fe6c50c3179d4caf52e2997c7f5ffa6512e3 &&\
    make updatedeps &&\
    make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
