FROM luzifer/archlinux:latest@sha256:233a68fc6425b2a0939eff8469dd12415e48039b734b089ef3dc9b3d8cfaf24b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
