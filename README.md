# Docker container for the Spark training

## Prerequisites

Docker-compose

## Running

```
docker-compose up -d
docker-compose exec app bash
```

## Usage

Once you are in the docker container shell, just run

```
spark-shell
```

to get into the spark shell. Spark cluster UI is available at http://localhost:8080, spark shell UI is available at http://localhost:4040
