FROM luzifer/archlinux:latest@sha256:336ffef2b68ea9b09e1c5702e2ab3d995c1b4c085fc70c6bb109421900cfac4c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
