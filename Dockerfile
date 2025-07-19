FROM luzifer/archlinux:latest@sha256:0be99e667127a6fd9b4448e71e7782cdf34079980cfac00a713bcd162a683891

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
