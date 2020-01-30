#!/bin/bash

sleep 20s
echo "Running Consumer..."
source /usr/local/python/env/bin/activate && cd /usr/local/python && python3 /etc/git-repo/consumer.py
