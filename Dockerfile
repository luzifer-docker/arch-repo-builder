FROM luzifer/archlinux:latest@sha256:58a982c4b796dae2ea3281bd879d0e1c0948127b7e922cc10df29f4c7ea9eb62

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
