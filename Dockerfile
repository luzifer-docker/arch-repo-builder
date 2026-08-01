FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:3b04f07c050056b9f11d5e2650d940ab153fa186fdd1343141ef002e3b5b7ff0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
