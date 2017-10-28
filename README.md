# What is Parity?

Parity is the console full node provided by [paritytech](https://github.com/paritytech/parity).

Parity supports Ethereum (ETH), and Ethereum Classic (ETC).

# How to use this image [AMD64 version]

Create shared volume:

```console
$ docker volume create --name parity
```

Run in background:

```console
$ docker run -v parity:/parity -d --name YOUR_CONTAINER_NAME -p YOUR_PORT:YOUR_PORT calvintam236/parity:amd64 -d /parity --port YOUR_PORT
```

Get `parity` options with:

```console
$ docker run --rm calvintam236/partiy:amd64
```

Fetch logs of a container:

```console
$ docker logs YOUR_CONTAINER_NAME
```
