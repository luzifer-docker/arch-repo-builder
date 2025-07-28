FROM luzifer/archlinux:latest@sha256:9e6373985b24251784c5399b8974de1c5379cbae3320f291a357e8ed73f26a20

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
