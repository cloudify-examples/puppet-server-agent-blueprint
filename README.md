[![Build Status](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint)

# puppet-server-agent-blueprint

This repository contains several blueprints for installing a Puppet server and agent using Cloudify.


## prerequisites

You will need a *Cloudify Manager* running in either AWS, Azure, or Openstack.

If you have not already, set up the [example Cloudify environment](https://github.com/cloudify-examples/cloudify-environment-setup). Installing that blueprint and following all of the configuration instructions will ensure you have all of the prerequisites, including keys, plugins, and secrets.


## About

  * Follows the install pattern for Puppet 4.2.
  * Currently only supports installation on Ubuntu 14.04.
  * See [Puppet Requirements](https://docs.puppet.com/puppet/4.2/system_requirements.html)
  * Examples use Cloudify 4.0.


### Execute Install

Next you provide those inputs to the blueprint and execute install:


#### For AWS run:

```shell
$ cfy install \
    https://github.com/cloudify-examples/puppet-server-agent-blueprint/archive/4.0.1.1.zip \
    -b pup \
    -n aws-blueprint.yaml
```


#### For Azure run:

```shell
$ cfy install \
    https://github.com/cloudify-examples/puppet-server-agent-blueprint/archive/4.0.1.1.zip \
    -b pup \
    -n azure-blueprint.yaml
```


#### For Openstack run:

```shell
$ cfy install \
    https://github.com/cloudify-examples/puppet-server-agent-blueprint/archive/4.0.1.1.zip \
    -b pup \
    -n openstack-blueprint.yaml
```
