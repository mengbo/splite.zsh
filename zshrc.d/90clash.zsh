#!/bin/sh

PROXY_URL="http://clash-server:7890"

if command -v curl >/dev/null 2>&1 \
   && curl -s --connect-timeout 1 "$PROXY_URL" >/dev/null 2>&1
then
    export http_proxy="$PROXY_URL"
    export https_proxy="$PROXY_URL"
    export no_proxy="localhost,127.0.0.1"
else
    unset http_proxy https_proxy no_proxy
fi

