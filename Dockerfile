FROM luzifer/archlinux:latest@sha256:bd43b9cc95a5dca5a5eadfbead13e01a5f1f86486e99936213383d58b56b21d4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
