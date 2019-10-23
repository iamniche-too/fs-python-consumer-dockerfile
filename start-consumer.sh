#!/bin/bash

sleep 20s
echo "Running Consumer..."
source /usr/local/fs-python/env/bin/activate && cd /usr/local/fs-python && python3 consumer.py
