FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:edf577f231864db079324e1e91291c65b11fc4ef5a53733c4d49a24faa15d236

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
