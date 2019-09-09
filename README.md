# Jenkins docker

### Features

- Custom plugins
- Sonarqube
- Registry

### Docker build

```
docker-compose build
docker-compose up -d
docker-compose exec jenkins bash
```

### Access Jenkins

```
Open http://localhost:8080

- To see the password just run (we need it only once):
docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```
