#!/bin/bash

docker run -it --rm --user 0 -p 6901:6901 \
    -p 7760:7760 \
    -p 7759:7759 \
    -e VNC_PW=password \
    -v $HOME/Tribler/Downloads:/headless/Downloads \
    -v $HOME/.Tribler:/headless/.Tribler \
    --name "tribler701" \
    tribler701vnc
    
