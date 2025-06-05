FROM luzifer/archlinux:latest@sha256:2c2a6aefcab3c5520b4b6323115f0c0701aa20c095fd0069e67c4f44561102bf

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
