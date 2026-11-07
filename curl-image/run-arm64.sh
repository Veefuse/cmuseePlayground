#!/bin/bash

# cd /root/build
# /root/curl-8.23.0/configure --without-ssl --without-libpsl --without-libidn2
# /root/cmusee-linux-arm64/bin/cmbuild -- make -j8

cd /root
/root/cmusee-linux-arm64/bin/cmusee --external --project-dir /root/curl-8.23.0 -- /root/build/src/curl http://example.com