#!/bin/bash

# cd /root/build
# cmake /root/flatbuffers-25.12.19
# /root/cmusee-linux-x64/bin/cmbuild -- make -j4

cd /root/flatbuffers-25.12.19
/root/cmusee-linux-x64/bin/cmusee --external --project-dir /root/flatbuffers-25.12.19 -- /root/build/flatsampletext
