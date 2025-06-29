FROM luzifer/archlinux:latest@sha256:a4d89dd6708cdaa4ce958e51f5e4e89a37f2d030ac809834078ab815124acc97

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
