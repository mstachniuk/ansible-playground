#!/bin/sh
service ssh start > /dev/null && \
script -q -c "tail -f /dev/null"
