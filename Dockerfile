FROM luzifer/archlinux:latest@sha256:b8b5310d8e4c5fed7cd11ed4ea033700b4c447a2294edec69d4cf59ca80d817c

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
