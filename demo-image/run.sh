#!/bin/bash

/root/cmusee-linux-x64/bin/cmc /root/demo.c -o /root/demo
/root/cmusee-linux-x64/bin/cmusee --external -- /root/demo a bb cc
