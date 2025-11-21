FROM luzifer/archlinux:latest@sha256:6c2b4f4e62f4c611343a31fb7454e02d6b1e18a584985783c534410ebb2a0907

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
