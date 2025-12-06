FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b1afe93b6f65690dfa6086e03a7cc9f8d01e04a086582c847e972fec740cf52e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
