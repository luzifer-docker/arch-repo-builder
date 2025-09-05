FROM luzifer/archlinux:latest@sha256:b8cc1b8d64eb6a79f447de9b51f66cb25857ec80c83b3fa3e1fae3463d5539e9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
