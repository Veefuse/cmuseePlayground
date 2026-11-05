#!/bin/bash

cd /root/jq-1.8.2

# ./configure
# /root/cmusee-linux-arm64/bin/cmbuild -- make -j4

/root/cmusee-linux-arm64/bin/cmusee --external --project-dir /root/jq-1.8.2 -- /root/jq-1.8.2/jq . /root/jq-1.8.2/tests/modules/data.json
