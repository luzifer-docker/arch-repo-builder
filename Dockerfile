FROM luzifer/archlinux:latest@sha256:e085c370e3c8d3ed7f30ac2b8997769cf8078191fc25cad32435843ad3eec0cf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
