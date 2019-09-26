#!/bin/sh

set -e -x

docker run --name knot-resolver -d -Pit --restart unless-stopped \
       -v $PWD/kresd.conf:/etc/knot-resolver/kresd.conf:ro \
       --network host cznic/knot-resolver:v4.2.0
