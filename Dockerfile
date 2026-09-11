FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2063934a3478ef28cf24b4b0ed7cd41c421ac822acf76136a3f51f6438095154

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
