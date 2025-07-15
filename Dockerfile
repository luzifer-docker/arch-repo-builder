FROM luzifer/archlinux:latest@sha256:1f2f49865b5076907152e47d4c67b348a813a15f5b0d0276c254b1c797827a2b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
