
# View

# Try
  https://veefuse.com/en/cmusee/playground/curl

# Download & Self-deployment
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-curl-x64-3.1.2.tar.xz
  docker load -i ./cmusee-curl-x64-3.1.2.tar.xz
  docker run -it -p 8890:8890 cmusee_curl:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```

# Build image yourself
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-x64-3.1.2.tar.xz
  tar xavf cmusee-linux-x64-3.1.2.tar.xz # extract
  wget https://github.com/curl/curl/releases/download/curl-8_23_0/curl-8.23.0.tar.xz
  tar xavf curl-8.23.0.tar.xz # extract

  docker build -t cmusee_curl:3.1.2 .
  docker run -it -p 8890:8890 cmusee_curl:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
  
  Arm64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-arm64-3.1.2.tar.xz
  tar xavf cmusee-linux-arm64-3.1.2.tar.xz # extract
  wget https://github.com/curl/curl/releases/download/curl-8_23_0/curl-8.23.0.tar.xz
  tar xavf curl-8.23.0.tar.xz # extract

  docker build -f ./Dockerfile-arm64 -t cmusee_curl:3.1.2 .
  docker run -it -p 8890:8890 cmusee_curl:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```