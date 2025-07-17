FROM luzifer/archlinux:latest@sha256:450695206d3d78093ea9c920062841da34026c50f9ae6bc27d9bbffb068844c9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
