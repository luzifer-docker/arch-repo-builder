FROM luzifer/archlinux:latest@sha256:e14460e79f21be1b1bacf516b5feea15fa6501a8f9e6d75bd360b8dcd58e8ff5

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
