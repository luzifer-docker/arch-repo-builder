FROM luzifer/archlinux:latest@sha256:f88be4df898da0ac79e8336ac88d85811c2f112dba1359863278e1a3212e91d7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
