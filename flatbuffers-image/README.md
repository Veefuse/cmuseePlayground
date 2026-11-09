
# View

# Try
  https://veefuse.com/en/cmusee/playground/flatbuffers

# Download & Self-deployment
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-flatbuffers-x64-3.1.2.tar.xz
  docker load -i ./cmusee-flatbuffers-x64-3.1.2.tar.xz
  docker run -it -p 8890:8890 cmusee_flatbuffers:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```

# Build image yourself
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-x64-3.1.2.tar.xz
  tar xavf cmusee-linux-x64-3.1.2.tar.xz # extract
  wget https://github.com/google/flatbuffers/archive/refs/tags/v25.12.19.tar.gz
  tar xavf flatbuffers-25.12.19.tar.gz # extract

  docker build -t cmusee_flatbuffers:3.1.2 .
  docker run -it -p 8890:8890 cmusee_flatbuffers:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
  
  Arm64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-arm64-3.1.2.tar.xz
  tar xavf cmusee-linux-arm64-3.1.2.tar.xz # extract
  wget https://github.com/google/flatbuffers/archive/refs/tags/v25.12.19.tar.gz
  tar xavf flatbuffers-25.12.19.tar.gz # extract

  docker build -f ./Dockerfile-arm64 -t cmusee_flatbuffers:3.1.2 .
  docker run -it -p 8890:8890 cmusee_flatbuffers:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```

