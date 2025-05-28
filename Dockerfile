FROM luzifer/archlinux:latest@sha256:eedfaa1b96d89b9f37e74ccb7af45875e4fec91fd35158c330b95e0a11cb8811

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
