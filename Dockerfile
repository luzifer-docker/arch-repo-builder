FROM luzifer/archlinux:latest@sha256:37313cec35314fbdfa2d6e3df3861c22c3312879cecf5cb5e812cc387f1a7978

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
