#!/bin/bash

cd /root/build

# ../jq-1.8.2/configure --disable-docs --enable-static --enable-all-static
# /root/cmusee-linux-x64/bin/cmbuild -- make -j4

/root/cmusee-linux-x64/bin/cmusee --external --project-dir /root/jq-1.8.2 -- /root/build/jq . /root/jq-1.8.2/tests/modules/data.json
