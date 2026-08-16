FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:96b565f4d6e2500b73f8cb7c9f3ca09407732d9ef8462b03c176c1c97e149a88

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
