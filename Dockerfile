FROM luzifer/archlinux:latest@sha256:a59a8e0e804375220bdf46156324c88686db3d3b3accad6358cd9334c965be63

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
