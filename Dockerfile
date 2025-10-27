FROM luzifer/archlinux:latest@sha256:16045d85679b305f47dac2a09a943f942fa10f7081531336c5e043ed04300c0b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
