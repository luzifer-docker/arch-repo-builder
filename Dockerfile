FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:2a70fd45ac1ff91d4b4cc32da9cd1088291e395ba6f16339e9289adc004776af

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
