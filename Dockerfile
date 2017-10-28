FROM debian:jessie-slim

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="Parity in Docker. Full node."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libssl1.0.0 \
    && curl -L -O https://parity-downloads-mirror.parity.io/v1.7.8/aarch64-unknown-linux-gnu/parity_1.7.8_arm64.deb \
    && dpkg -i parity_1.7.8_arm64.deb \
    && rm parity_1.7.8_arm64.deb \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["parity"]
CMD ["-h"]
