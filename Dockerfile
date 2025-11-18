FROM luzifer/archlinux:latest@sha256:15b2fe46b37fce87f53e6f0933c204574ef18a549d8438731061954d800c5a42

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
