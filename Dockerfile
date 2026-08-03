FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ca478318e8359f58eed83a63f9368b660c1e3f61c247b54669e370840ea6db69

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
