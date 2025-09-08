FROM luzifer/archlinux:latest@sha256:8f11e2be370c0690c1b23cd38773d25675b9b4bbdab861a4599157f9fded377e

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
