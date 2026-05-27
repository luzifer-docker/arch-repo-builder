FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2a8067e47727aa3f82d2b102b8f47d87fda51e696a27c5e7bc1c50d33bbe2f90

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
