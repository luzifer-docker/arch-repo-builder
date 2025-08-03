FROM luzifer/archlinux:latest@sha256:27963c4ef755cc6ad947a67bea1ba14cf328676f521815c18207e68ea67f9198

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
