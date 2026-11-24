# AegisOps AI — starter scaffold

Java 21 / Spring Boot 3.5.7 / Python 3.12 / FastAPI / Docker Compose.

## Prerequisites
- JDK 21, Maven 3.9+, Python 3.12, Docker Compose v2

## Local development
```bash
mvn clean verify
mvn checkstyle:check
python3.12 -m venv .venv
source .venv/bin/activate
python -m pip install -e './apps/ml-service[dev]'
ruff check apps/ml-service
(cd apps/ml-service && pytest -q)
```

## Start the services
```bash
mvn -DskipTests package
docker compose -f infra/docker/compose.yaml up --build -d
curl http://localhost:8081/actuator/health
curl http://localhost:8082/actuator/health
curl http://localhost:8000/health
```

## Stop
```bash
docker compose -f infra/docker/compose.yaml down
```

The Compose database password is **local development only**. Services are skeletons and are not yet wired to PostgreSQL or Redis. Do not expose local ports publicly.
