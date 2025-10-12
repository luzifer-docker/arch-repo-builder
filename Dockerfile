FROM luzifer/archlinux:latest@sha256:77e54edacdf3a566352c0c0ad58ed74a8bde8478d7e5a708bf1ef53b280beba8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
