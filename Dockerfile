# How to use this Dockerfile
# Build with: docker build --rm -t tribler700beta .
#
# xhost + 
#
# docker run -ti  --net=host \
#                 --env="DISPLAY" \
#                 -v $HOME/Tribler/Downloads:/root/Downloads \
#                 -v $HOME/.Tribler:/root/.Tribler \
#                 --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
#                 --name "tribler700beta" \
#                 pipo2004/tribler700beta /usr/bin/tribler

# 
# After quitting the container, it can be restarted with: docker restart tribler700beta
#
#

# Start with Ubuntu base image
FROM ubuntu:17.10
MAINTAINER Hans de Jong <xxx@xxx.com>

RUN apt-get update && apt-get -y upgrade && DEBIAN_FRONTEND=noninteractive apt-get install -y \
  wget \
  gdebi
  
RUN wget https://github.com/Tribler/tribler/releases/download/v7.0.1/tribler_7.0.1_all.deb
RUN gdebi --n tribler_7.0.1_all.deb

CMD ["/usr/bin/tribler"]
