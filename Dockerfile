FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:4e93ce3117445e5ed6842887f3c2905d6b081906e8940adca540c4e36c0c7008

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
