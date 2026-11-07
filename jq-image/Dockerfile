
FROM ubuntu:22.04

WORKDIR /root

COPY ./cmusee-linux-x64 /root/cmusee-linux-x64
RUN echo "export PATH=\$PATH:/root/cmusee-linux-x64/bin" >> /root/.bashrc

RUN apt-get update \
 && apt-get install -y build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY ./run.sh /root/run.sh
COPY ./jq-1.8.2 /root/jq-1.8.2

RUN mkdir build
WORKDIR /root/build

RUN /root/jq-1.8.2/configure --disable-docs --enable-static --enable-all-static

RUN /root/cmusee-linux-x64/bin/cmbuild -- make -j16 && rm `find -name "*.o"`

WORKDIR /root

CMD ["/root/cmusee-linux-x64/bin/cmusee", "--external", "--project-dir", "/root/jq-1.8.2", "--", "/root/build/jq", ".", "/root/jq-1.8.2/tests/modules/data.json"]