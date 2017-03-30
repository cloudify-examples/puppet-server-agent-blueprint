[![Build Status](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint)

# puppet-server-agent-blueprint

This repository contains several blueprints for installing a Puppet server and agent using Cloudify.

** Note: This repository is still in development and has no formal releases.

## About

  * Follows the install pattern for Puppet 4.2.
  * Currently only supports installation on Ubuntu 14.04.
  * See [Puppet Requirements](https://docs.puppet.com/puppet/4.2/system_requirements.html)
  * Examples use Cloudify 4.0.

## Manager Execution instructions

  `cfy install [blueprint-file-path] -i [inputs-file-path]`

## Local Execution instructions

  `cp inputs/local/aws.yaml.example inputs.yaml` or 
    `cp inputs/local/openstack.yaml.example inputs`

  ** Edit the inputs.yaml file with your cloud information
