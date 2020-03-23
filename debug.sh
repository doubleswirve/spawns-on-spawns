#!/bin/bash
mkdir -p debug
strace -f -s 1024 node b.js &> debug/strace.log
