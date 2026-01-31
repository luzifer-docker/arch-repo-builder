FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:74f7681ad5c2af1af50d6f8bcfedb33abefc7f6893ea98a127e23089aab9f41a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
