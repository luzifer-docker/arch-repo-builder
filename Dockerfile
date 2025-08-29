FROM luzifer/archlinux:latest@sha256:93ce23f5d61cd51e159f8bdbc9572a072a7d1b2c49373ebfea79677eaae4a72a

COPY build.sh /usr/local/bin/
RUN bash /usr/local/bin/build.sh

VOLUME ["/src", "/repo", "/config"]
WORKDIR /src

COPY run.sh /usr/local/bin/
COPY getkeys.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/run.sh"]
