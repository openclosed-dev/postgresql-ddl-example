# PostgreSQL DDL Example

## Prerequisites

```shell
sudo apt install build-essential
```

## How to build

```shell
make
```

## How to test

```shell
docker compose up -dV
make clean
make
make test
docker compose down
```
