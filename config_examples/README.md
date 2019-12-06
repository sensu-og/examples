# Sensu Configuration Examples

- [Overview](#)
- [Directories](#directories)
  - [Checks](#checks)
    - [Metric check examples](#metric-check-examples)
      - [Ruby metric checks](#ruby-metric-checks)
      - [Go metric checks](#go-metric-checks)
    - [Status check examples](#status-check-examples)
      - [Ruby status checks](#ruby-status-checks)
      - [Go metric checks](#ruby-status-checks)
  - [Filters](#filters)
  - [Mutators](#mutators)
  - [Handlers](#handlers)
    - [Alerting handlers](#alerting-handlers)
    - [Metric handlers](#metric-handlers)
    - [Miscellaneous handlers](#miscellaneous-handlers)
  - [Assets](#assets)
  - [Hooks](#hooks)
- [Config Management](#config-management)

## Overview

This project is a grouping of configuration files meant to be used as examples for deploying Sensu. The examples are atomic in the sense that they're singular resources, rather than some of the larger examples you will find in this repo. The examples here are formatted as YAML.

## Directories

The directories in this repo are divided up by the resource type that the directory houses. 

### Checks

Checks are the resoure in Sensu that gathers data. They can be metric checks (gathering metric data with no context), or they can be status checks (checks that have a severity assigned to them in accordance with the [Nagios plugin API][1]

#### Metric check examples

##### Ruby metric checks

###### System resources
- [Disk]()
- [CPU]()
- [RAM]()
- [Network]()

###### Web resources

- [HTTP]()
- []()
- []()
- []()
- []()
- []()

###### AWS resources

##### Go metric checks

###### System resources

###### Web resources

###### AWS resources

#### Status check examples

##### Ruby status checks

###### System resources
- [Disk]()
- [CPU]()
- [RAM]()
- [Network]()

###### Web resources

- [HTTP]()
- []()
- []()
- []()
- []()
- []()

###### AWS resources

##### Go metric check examples

###### System resources
- [Disk]()
- [CPU]()
- [RAM]()
- [Network]()

###### Web resources

- [HTTP]()
- []()
- []()
- []()
- []()
- []()

###### AWS resources

### Filters

- []()

### Mutators

### Handlers

Handlers take event data and sent it off to some other service. 

#### Alerting handlers

Alerting handlers are responsible handling and routing notifications to a 3rd party.

- [Slack]()
- [Email]()
- [Opsgenie]()
- [Pagerduty]()

#### Metric handlers

Metric handlers are responsible for handling and routing metric data. 

- [Influxdb]()
- [Graphite]()

#### Miscellaneous handlers

- [Remediation handler]()
- [Ansible Tower handler]()

### Hooks

Hooks are a way to enrich event data that you gather. It's not recommended to use them as a means of remediation. If you're looking to remediate issues with Sensu, consider using the [remediation handler]() instead

## Config Management

This project also has some example configuration management snippets for Sensu.

<!--LINKS-->
[1]: https://assets.nagios.com/downloads/nagioscore/docs/nagioscore/3/en/pluginapi.html