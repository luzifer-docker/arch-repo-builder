FROM luzifer/archlinux:latest@sha256:aaee127b9b19c37af36ed0f2aef14b1622e2a7356b6fea7cceae755761ca3632

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
