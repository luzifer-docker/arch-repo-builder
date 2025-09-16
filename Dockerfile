FROM luzifer/archlinux:latest@sha256:e62758ca8d13ff5166033bec671f12a0896e5ba481bbe08b8e9a43c3dc40e271

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
