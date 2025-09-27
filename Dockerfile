FROM luzifer/archlinux:latest@sha256:73002368923c72428847caa0dd321b22a2433604958e79bd1f308fbd48e0542d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
