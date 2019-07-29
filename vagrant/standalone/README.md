# Deploy Sensu with Vagrant: Standalone architecture

This example spins up a CentOS 7 virtual machine with Virtual Box and installs:

- a Sensu backend
- a Sensu agent
- sensuctl

### Prerequisites

- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

### Operation

Clone the repository:

```
git clone https://github.com/sensu/examples && cd examples/vagrant/standalone
```

Start the virtual machine:

```
vagrant up
```

SSH into the virtual machine:

```
vagrant ssh
```

Configure sensuctl:

```
sensuctl configure -n \
--username 'admin' \
--password 'P@ssw0rd!' \
--namespace default \
--url 'http://127.0.0.1:8080'
```

Shut down and erase the virtual machine:

```
vagrant destroy
```

### Resources

- [Get started with Sensu](https://docs.sensu.io/sensu-go/latest/getting-started/learn-sensu/#lesson-1-create-a-sensu-monitoring-event)
