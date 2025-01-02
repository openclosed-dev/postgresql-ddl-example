# PostgreSQL DDL Example

## Prerequisites

```shell
sudo apt install build-essential
```

## How to build

```
make
```

## How to test

```
docker compose up -dV
make clean
make
make test
docker compose down
```
