FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:09c48ca05d40adc4dacd8f4a8b1e116be3afd01e0ca67b052fcfaabd5d4f4e18

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
