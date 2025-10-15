FROM luzifer/archlinux:latest@sha256:3aed54643859f73bcaa58459a899ec96b1b3a61c8289d72b664c5f567378c0cf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
