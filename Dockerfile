FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5fc7672b91d030b4fa742841bd0b9dd7975b4193fbcdda015ac84c8a17768c93

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
