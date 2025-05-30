FROM luzifer/archlinux:latest@sha256:0d8a5a77e5ea890bc279a81ea883e768ceb6d574eb4b0c70abfd05881a6f405c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
