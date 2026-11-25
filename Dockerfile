FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:dd4ef76cf3c1d16ea446878dac972e00c07f7973867769cd00b1b1443f443ca1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
