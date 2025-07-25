FROM luzifer/archlinux:latest@sha256:92fbd7d5e8b7af0d09c083db067914af65ed47f5d9c75dca879390960f625103

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
