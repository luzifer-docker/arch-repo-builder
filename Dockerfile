FROM luzifer/archlinux:latest@sha256:9ca89d3808193d3395f4c4f9ebf2ac8be0005742daba4455dbd4c121439d2298

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
