# Server monitoring with Sensu

The resource definitions in this example configure:

- Assets:
  - [Sensu InfluxDB handler asset][]
  - [Sensu Slack handler asset][]
  - [Sensu PagerDuty handler asset][]
  - [Sensu Plugins CPU checks asset][]
  - [Ruby runtime asset][]
- Handlers:
  - InfluxDB
  - Slack
  - PagerDuty
- Checks:
  - CPU checks
  - CPU metrics

### Prerequisites

<!-- List any requirements before using the example-->

- [a running Sensu backend][]
- [a running Sensu agent][]
- [sensuctl][] configured to talk to the Sensu backend

### Operation

Clone the repository:

```
git clone https://github.com/sensu/examples && cd examples/
```

Add to Sensu:

```
sensuctl create -f server-monitoring/resources.yml
```

### Resources

- [][]
