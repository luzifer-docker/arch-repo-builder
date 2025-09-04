FROM luzifer/archlinux:latest@sha256:1dd439f8d7c9b1814ce6171ce0c233a1bf4125523a560e5a65a9e2a5a4f1e7fe

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
