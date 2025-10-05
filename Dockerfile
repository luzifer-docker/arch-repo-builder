FROM luzifer/archlinux:latest@sha256:386a0b42eba0859fe4c60204b12bbd9bab22f001ae56ed33a8cce8081c24ac40

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
