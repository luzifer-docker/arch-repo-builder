FROM luzifer/archlinux:latest@sha256:fc29b427b940a0f85ac0f228789ff46f918f6d822bf0b54b5ddf5b2ea8623177

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
