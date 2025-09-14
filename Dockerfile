FROM luzifer/archlinux:latest@sha256:ab0b625fb85c92bbf1abf6e2efdc1f18e3a8953d5f65641c90bd619d240afc68

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
