FROM luzifer/archlinux:latest@sha256:b41819e9c4fab5f3b5603a8360b76ef144005e43ac3284b95bbc59841e9ad538

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
