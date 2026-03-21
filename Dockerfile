FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:427877024d52cebfb40a98b7e4541937411bb77b069536ec495fbfbd7aacd19c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
