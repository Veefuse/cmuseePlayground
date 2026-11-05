
# View

# Try
  https://veefuse.com/en/cmusee/playground/jq

# Download & Self-deployment
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-demo-x64-3.1.2.tar.xz
  docker load -i ./cmusee-jq-x64-3.1.2.tar.xz
  docker run -it -p 8890:8890 cmusee_jq:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```

# Build image yourself
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-x64-3.1.2.tar.xz
  tar xavf cmusee-linux-x64-3.1.2.tar.xz # extract
  wget https://github.com/jqlang/jq/releases/download/jq-1.8.2/jq-1.8.2.tar.gz
  tar xavf jq-1.8.2.tar.gz # extract

  docker build -t cmusee_jq:3.1.2 .
  docker run -it -p 8890:8890 cmusee_jq:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
  
  Arm64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-arm64-3.1.2.tar.xz
  tar xavf cmusee-linux-arm64-3.1.2.tar.xz # extract
  wget https://github.com/jqlang/jq/releases/download/jq-1.8.2/jq-1.8.2.tar.gz
  tar xavf jq-1.8.2.tar.gz # extract

  docker build -f ./Dockerfile-arm64 -t cmusee_jq:3.1.2 .
  docker run -it -p 8890:8890 cmusee_jq:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
  
# Notice
  ``` bash
  ./configure --disable-docs --enable-static --enable-all-static
  ```
  `--enable-static --enable-all-static` is necessary.
  Because the Makefile uses /usr/bin/nm,
  it cannot recognize LLVM ThinLTO objects.