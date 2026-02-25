FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:cbd863879734aee3f4873168983ff8c76e314e1c40d1d5670394856d1eff9f84

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
