FROM luzifer/archlinux:latest@sha256:2e46868930b2cab2cb8848cc7343145e106fcba914662bfd316cbf15040879d2

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
