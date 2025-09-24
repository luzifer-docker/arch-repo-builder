FROM luzifer/archlinux:latest@sha256:ce0e408c82a2fa367a5dc3cd519b17086854ed3335dad503e5f5a833faa8f6d8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
