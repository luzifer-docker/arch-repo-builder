FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:57745a1bb01602323361fc2d6de11ac5c2bde3fb60f8c49e5f0aa2f7c2e74adc

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
