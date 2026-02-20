FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:c0288527d468bdb518e0843252d0339770736fa58ba9f9477966fb7094d2f904

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
