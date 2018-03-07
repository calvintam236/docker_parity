FROM debian:jessie-slim

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="Parity in Docker. Full node."

WORKDIR /tmp

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates curl libssl1.1 \
    && curl -L -O http://d1h4xl4cr1h0mo.cloudfront.net/v1.8.11/aarch64-unknown-linux-gnu/parity_1.8.11_ubuntu_arm64.deb \
    && dpkg -i parity_1.8.11_ubuntu_arm64.deb \
    && rm parity_1.8.11_ubuntu_arm64.deb \
    && apt-get -y remove ca-certificates curl \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/{apt,dpkg,cache,log}

ENTRYPOINT ["parity"]
CMD ["-h"]
