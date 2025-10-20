FROM luzifer/archlinux:latest@sha256:7405d6b6c53dd38ab77cb90f6061517eab9f314706a0ca4f39c4e56d75730012

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
