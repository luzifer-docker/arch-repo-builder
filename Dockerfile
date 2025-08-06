FROM luzifer/archlinux:latest@sha256:a694188482e54668abbc13613489ca287fc28d26a4d29cb9fbcd7414cc3c7aa4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
