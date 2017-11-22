# What is Parity?

Parity is the console full node provided by [paritytech](https://github.com/paritytech/parity).

Parity supports Ethereum (ETH), and Ethereum Classic (ETC).

# How to use this image [ARM64 version]

Create shared volume:

```console
$ docker volume create --name parity
```

Run in background:

```console
$ docker run -v parity:/parity -d --name YOUR_CONTAINER_NAME -p YOUR_PORT_1:YOUR_PORT_1 -p YOUR_PORT_2:YOUR_PORT_2 calvintam236/parity:arm64 -d /parity --port YOUR_PORT_1 --unsafe-expose --no-ui --jsonrpc-port YOUR_PORT_2 --jsonrpc-interface all --no-ws --no-dapps --no-config --no-hardware-wallets
```

Get `parity` options with:

```console
$ docker run --rm calvintam236/partiy:arm64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
