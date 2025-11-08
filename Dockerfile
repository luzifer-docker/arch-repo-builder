FROM luzifer/archlinux:latest@sha256:cec7080e7d692c2257b8fdba51833d4d658947adf48b8c9d4a965f4548a1ec1d

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
