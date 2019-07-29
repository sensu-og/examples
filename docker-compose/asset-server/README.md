# Deploy Sensu with Docker: Asset server

This example  uses a `docker-compose.yaml` for provisioning a Sensu asset server,
   including:

   - A Sensu Go backend, API, and dashboard (`sensu-backend`)
   - A Sensu Go agent (`sensu-agent`)
   - An HTTP file server for hosting [Sensu Assets][sensu-assets]

This project provides a local HTTP server for hosting Sensu Assets. This will
allow you to test new assets by dropping them into the `./assets` directory. You
can view your assets from your browser by visiting http://localhost:8000/assets.

### Prerequisites

- [Docker Compose][2]

### Operation

Clone the repository:

```
git clone https://github.com/sensu/examples && cd examples/docker-compose/asset-server
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

To view the HTTP server logs, use `docker logs` to follow the NGINX
container logs:

```
$ docker logs -f $(docker ps --format "{{.ID}}" --filter "name=sensu-asset-server")

172.28.0.1 - - [23/Aug/2018:22:15:30 +0000] "GET /assets/ HTTP/1.1" 200 955 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36"
```

### Resources

- [Asset reference][sensu-assets]
- [Sensu API overview][1]

[sensu-assets]: https://docs.sensu.io/sensu-go/latest/reference/assets/
[1]: https://docs.sensu.io/sensu-go/latest/api/overview
[2]: https://docs.docker.com/compose/install/
