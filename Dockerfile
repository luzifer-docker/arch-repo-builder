FROM luzifer/archlinux:latest@sha256:8158b10c5dc098c25fb3f39a37f63ab8d1843f0842d3882c34f1a784f064e9fd

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
