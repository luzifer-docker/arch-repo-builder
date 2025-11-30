FROM ghcr.io/luzifer-docker/archlinux:latest@sha256:5c5147fa26bc8bb91636c0112c3662f2848bef73ec2ed479fb9f835cb0fb2d6b

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
