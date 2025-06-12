FROM luzifer/archlinux:latest@sha256:96094ae8f6a11cc80ce04e4605c5d330ef91c6b325c29662c55ed0dff66245e7

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
