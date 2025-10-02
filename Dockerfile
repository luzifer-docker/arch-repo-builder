FROM luzifer/archlinux:latest@sha256:d68b305d1d62d43c5bf9200567571a51f3d0f6fbeb6fe4894aada7b574ae1173

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
