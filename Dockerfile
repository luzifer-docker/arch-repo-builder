FROM luzifer/archlinux:latest@sha256:dfb2348116069cc93b0a60c1b6e8ce6b8ed7f14fae148d1417165e53976ff700

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
