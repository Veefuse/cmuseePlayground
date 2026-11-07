
FROM ubuntu:22.04

WORKDIR /root

COPY ./cmusee-linux-x64 /root/cmusee-linux-x64
RUN echo "export PATH=\$PATH:/root/cmusee-linux-x64/bin" >> /root/.bashrc

RUN apt-get update \
 && apt-get install -y build-essential \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY ./run.sh /root/run.sh
COPY ./demo.c /root/demo.c
RUN /root/cmusee-linux-x64/bin/cmc /root/demo.c -o /root/demo

CMD ["/root/cmusee-linux-x64/bin/cmusee", "--external", "--", "/root/demo", "a", "bb", "cc"]
