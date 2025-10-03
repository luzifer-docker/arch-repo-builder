FROM luzifer/archlinux:latest@sha256:345c735d3e3bd54dc57b4b8e4e32d1f9a3293b9a78ac2b2389289bd87e0fc1f4

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
