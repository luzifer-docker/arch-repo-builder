FROM luzifer/archlinux:latest@sha256:1e13ce4e19663a5b3bc8a899145f19b62a73311ca74f436b221516e68c5d7327

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
