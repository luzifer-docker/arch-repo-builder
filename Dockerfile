FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:1d5d91c6481be2855a1dd786ad787a82511452d588a66eff246a974262352571

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
