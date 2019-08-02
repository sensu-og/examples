# Deploy Sensu with Docker: Metrics stack

This example  uses a `docker-compose.yaml` for provisioning a Sensu asset server, including:

   - A Sensu Go backend, API, and dashboard (`sensu-backend`)
   - A Sensu Go agent (`sensu-agent`)
  - InfluxDB to store metrics
  - Grafana for visualization

### Prerequisites

- [Docker Compose][2]

### Operation

Clone the repository:

```
git clone https://github.com/sensu/examples && cd examples/docker-compose/metrics-stack
```

Bootstrap your Sensu Go environment: 

```
docker-compose up -d
```

Configure your local sensuctl:

```
sensuctl configure -n \
--username 'admin' \
--password 'P@ssw0rd!' \
--namespace default \
--url 'http://localhost:8080'
```

### Resources

- [Server monitoring examples](../../server-monitoring)

[1]: https://docs.sensu.io/sensu-go/latest/api/overview
[2]: https://docs.docker.com/compose/install/
