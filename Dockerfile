FROM meteorhacks/meteord:base
MAINTAINER topikachu@163.com
RUN apt-get -y install build-essential libssl-dev git python
COPY ./ /app
RUN bash $METEORD_DIR/on_build.sh
RUM RM -rf /app