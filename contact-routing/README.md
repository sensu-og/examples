# Routing alerts with Sensu

The resource definitions in this example contact routing for two teams: ops and dev.

### Prerequisites

<!-- List any requirements before using the example-->

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
sensuctl create -f contact-routing/resources.yml
```

### Resources

- [Guide to Sensu contact routing](https://docs.sensu.io/sensu-go/latest/guides/contact-routing)
