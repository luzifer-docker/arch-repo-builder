FROM luzifer/archlinux:latest@sha256:b0d06bd9deac56e90b6d8dd5b4c1bcf5003d73615c3523cf50464dc3812459dc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
