FROM luzifer/archlinux:latest@sha256:edc0cf8f3b7421fc3cd6faef5095cf6737e7541a6330d58a2802c4f1a79f964f

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
