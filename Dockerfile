FROM luzifer/archlinux:latest@sha256:bb54f0b5af9174afb9b44af679b2fb12832f3d1eb4a2701a41b47d1146226980

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
