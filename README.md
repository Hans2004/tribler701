Ubuntu container with Tribler installed.

To run, use the startTribler.sh script, or type:

docker run -it --rm --user 0 -p 6901:6901 \
    -p 7760:7760 \
    -p 7759:7759 \
    -e VNC_PW=password \
    -v $HOME/Tribler/Downloads:/headless/Downloads \
    -v $HOME/.Tribler:/headless/.Tribler \
    --name "tribler701" \
    pipo2004/tribler701

Then, in your favourite browser goto: http://localhost:6901/?password=password
