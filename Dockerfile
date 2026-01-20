FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:b03fba0687ef73e306b977f74c187431a0689dbfa4191b6620a9014047517e2b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
