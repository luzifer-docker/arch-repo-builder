FROM luzifer/archlinux:latest@sha256:0591f0b63f4a80b614208bf75427201a2f94ab5ad0057c48e0990260847dbae0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
