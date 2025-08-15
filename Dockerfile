FROM luzifer/archlinux:latest@sha256:3e5a1f7571422d6f21772c8477bc846bf72f70042a6026c45134098c3ff6c89f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
