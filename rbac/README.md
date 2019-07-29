# Sensu RBAC: Example users and groups configuration

The resource definitions in this example configure:

- Two namespaces: default and ops
- Two users: Alice, who is part of the ops group, and Bob, who is not part of any groups
- A role role with admin permissions for the ops namespace
- A role binding that ties the ops-admin role to the ops group, and therefore to Alice
- A cluster role with admin permissions for the Sensu instance
- A cluster role binding that ties the default admin role to Bob directly

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
sensuctl create -f rbac/resources.yml
```

### Resources

- [][]
