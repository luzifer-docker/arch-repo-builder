FROM luzifer/archlinux:latest@sha256:7186a62cd7b7dbdf74d45a3035de41c2863f6b92ed5c34a8b294dc33f3ffccb0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
