FROM luzifer/archlinux:latest@sha256:23091740224909180dd8415b1548c658f422ae84ac6e2aee2834b5f0c06cee95

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
