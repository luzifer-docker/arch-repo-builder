FROM luzifer/archlinux:latest@sha256:4c64c74e9486a9b9236b563b91f6e4471959ba94af45505ea8fb0f0dfdf00717

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
