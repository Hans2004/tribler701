Ubuntu container with Tribler installed.

To run, use the startTribler.sh script, or type:

docker run -ti  --net=host --env="DISPLAY" -v $HOME/Tribler/Downloads:/root/Downloads -v $HOME/.Tribler:/root/.Tribler --volume="$HOME/.Xauthority:/root/.Xauthority:rw" --name "tribler701" hans2004/tribler701 /usr/bin/tribler

Possibly need to type "xhost +" before.
