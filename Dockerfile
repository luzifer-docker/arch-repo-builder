FROM luzifer/archlinux:latest@sha256:cec9d566f59d62faad74b24910ab6ccf895799fec114a06e7bdbb59e26d2b8a1

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
