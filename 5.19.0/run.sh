#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run -d -p 2812:2812 -v $DIR/../monit.d:/etc/monit.d --name=monit monit
