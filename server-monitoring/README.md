# Server monitoring with Sensu

The resource definitions in this example configure:

- Assets:
  - Sensu InfluxDB handler asset
  - Sensu Slack handler asset
  - Sensu PagerDuty handler asset
  - Sensu Plugins CPU checks asset
  - Ruby runtime asset
- Handlers:
  - InfluxDB
  - Slack
  - PagerDuty
- Checks:
  - CPU checks
  - CPU metrics

### Prerequisites

- [a running Sensu backend](https://docs.sensu.io/sensu-go/latest/installation/install-sensu#install-the-sensu-backend)
- [a running Sensu agent](https://docs.sensu.io/sensu-go/latest/installation/install-sensu#install-sensu-agents)
- [sensuctl](https://docs.sensu.io/sensu-go/latest/installation/install-sensu#install-sensuctl) configured to talk to the Sensu backend

### Operation

Clone the repository:

```
git clone https://github.com/sensu/examples && cd examples/
```

Add to Sensu:

```
sensuctl create -f server-monitoring/resources.yml
```
