
FROM ubuntu:22.04

WORKDIR /root

COPY ./cmusee-linux-x64 /root/cmusee-linux-x64
RUN echo "export PATH=\$PATH:/root/cmusee-linux-x64/bin" >> /root/.bashrc

RUN apt-get update \
 && apt-get install -y build-essential cmake \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY ./run.sh /root/run.sh
COPY ./flatbuffers-25.12.19 /root/flatbuffers-25.12.19

RUN mkdir build
WORKDIR /root/build

RUN cmake /root/flatbuffers-25.12.19

RUN /root/cmusee-linux-x64/bin/cmbuild -- make -j$(nproc) && rm `find -name "*.o"` && rm libflatbuffers.a

WORKDIR /root/flatbuffers-25.12.19

CMD ["/root/cmusee-linux-x64/bin/cmusee", "--external", "--project-dir", "/root/flatbuffers-25.12.19", "--", "/root/build/flatsampletext"]
