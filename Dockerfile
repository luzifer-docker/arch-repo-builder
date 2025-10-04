FROM luzifer/archlinux:latest@sha256:be59a68b66d810cac862b955e5ac7a8c70f01a94472380895a7df62fd229094b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
