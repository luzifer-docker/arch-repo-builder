FROM luzifer/archlinux:latest@sha256:55b61efdea90ecea707856d9dd36cbdcc056d96dce7ed9d385917311a1c2d0bf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
