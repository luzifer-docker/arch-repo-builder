FROM luzifer/archlinux:latest@sha256:13127e3799b7278a3329d34a10bc7bb6710437f70c0794500c40052cac821bb9

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
