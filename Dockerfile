FROM debian:jessie-slim

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="Parity in Docker. Full node."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libssl1.0.0 \
    && curl -L -O https://parity-downloads-mirror.parity.io/v1.7.10/x86_64-unknown-linux-gnu/parity \
    && mv parity /usr/local/bin/parity \
    && chmod a+x /usr/local/bin/parity \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["parity"]
CMD ["-h"]
