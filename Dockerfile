FROM luzifer/archlinux:latest@sha256:cb9023380bbdbedc99e1a730d9ff68383ca509bf5a71ee2a1de31aac9ada7b39

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
