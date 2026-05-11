FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b0e0941f5d800ffc4d2f311cae8e44c7b6a2ee8aed276327b816f2f88603f81a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
