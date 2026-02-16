FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2ceaa073035bdc4f09ee23296dea8e819bfd31c92c4e81540fa2f243bb4c335b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
