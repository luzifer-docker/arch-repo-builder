FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:ad1e0dfae3491c23fac4a55d2dafaa9113600b264a42af51835e7fc9fbc78bc8

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
