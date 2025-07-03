FROM luzifer/archlinux:latest@sha256:57f89f539932f6e4ae2ecb42241a2e4d3e28102b168fd5d8b18a247f4ea01b0f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
