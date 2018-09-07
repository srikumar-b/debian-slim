# debian-slim
Build custom docker container using debian slim image with kubectl and docker packages pre-installed.

## Checkout

```bash
git clone https://github.com/srikumar-b/debian-slim.git
```

## Login

```bash
docker login
```

## Build

```bash
docker build . -t debian-slim
```

## Tag

```bash
docker tag debian-slim sbonda/debian-slim:<tag>
```

## Push

```bash
docker push sbonda/debian-slim:<tag>
