FROM golang

RUN mkdir -p /go/src/github.com/hashicorp &&\
    cd /go/src/github.com/hashicorp &&\
    git clone https://github.com/bitglue/terraform.git terraform &&\
    cd terraform &&\
    git checkout b772f6eda1564bbe6aeeadb10dbcb4ba96d3f55a &&\
    make updatedeps &&\
    make dev

ENTRYPOINT ["terraform"]
WORKDIR /data
