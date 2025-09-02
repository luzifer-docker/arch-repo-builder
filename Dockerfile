FROM luzifer/archlinux:latest@sha256:2b7c51ec4e6c5cbcb7f648c7c63fb083b259ae49addf986320f74cb5618277a7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
