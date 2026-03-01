FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:9f30b2361f72e30b3bed4c9d3e7310236402c642b7a2bc533987d04779a944ec

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
