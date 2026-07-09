FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:62be98eb27c467e774d75ff443f406530912befcaf8e85d374aafd719aa500b0

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
