FROM luzifer/archlinux:latest@sha256:1861140f6fbd32d9084eb4f91830abb10cdeb0d3dda1418e0afc2214c4be3946

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
