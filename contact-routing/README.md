# Routing alerts with Sensu

The resource definitions in this example contact routing for two teams: ops and dev.

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
sensuctl create -f contact-routing/resources.yml
```

### Resources

- [Guide to Sensu contact routing][]
