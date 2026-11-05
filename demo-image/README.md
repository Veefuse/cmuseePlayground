
# View

# Try
  https://veefuse.com/en/cmusee/playground/demo

# Download & Self-deployment
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-demo-x64-3.1.2.tar.xz
  docker load -i ./cmusee-demo-x64-3.1.2.tar.xz
  docker run -it -p 8890:8890 cmusee_demo:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```

  ARM64
  ``` bash
  wget https://veefuse.com/release/cmusee-demo-arm64-3.1.2.tar.xz
  docker load -i ./cmusee-demo-arm64-3.1.2.tar.xz
  docker run -it -p 8890:8890 cmusee_demo:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```


# Build image yourself
  X64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-x64-3.1.2.tar.xz
  tar xavf cmusee-linux-x64-3.1.2.tar.xz # extract

  docker build -t cmusee_demo:3.1.2 .
  docker run -it -p 8890:8890 cmusee_demo:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
  
  Arm64
  ``` bash
  wget https://veefuse.com/release/cmusee-linux-arm64-3.1.2.tar.xz
  tar xavf cmusee-linux-arm64-3.1.2.tar.xz # extract

  docker build -f ./Dockerfile-arm64 -t cmusee_demo:3.1.2 .
  docker run -it -p 8890:8890 cmusee_demo:3.1.2 /bin/bash
  /root/run.sh # run inside the container
  ```
