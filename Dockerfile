FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:7db5601879091d5368984ce6a2237d38b952926b078dd563ac5624c2327ab7be

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
