#!/bin/bash

sudo docker run -it \                                                                                                                                                                    ─╯
    --rm \
    --device /dev/snd \
    --device=/dev/dri \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -v $(pwd):/mnt \
    ghcr.io/sp00p64/dotpeek_docker:latest