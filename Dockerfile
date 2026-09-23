FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7ab2f51e0ed79ed79651094a029a3bf2f998d315b83ee8cc203ba5eac39cc21c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
