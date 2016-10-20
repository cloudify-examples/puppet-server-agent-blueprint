[![Build Status](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint.svg?style=shield&circle-token=:circle-token)](https://circleci.com/gh/cloudify-examples/puppet-server-agent-blueprint)

# cloudify-puppet-example

This repository contains several blueprints for installing a Puppet server and agent using Cloudify.

** Note: This repository is still in development and has no formal releases.

## About

  * Follows the install pattern for Puppet 4.2.
  * Currently only supports installation on Ubuntu 14.04.
  * Examples use Cloudify 3.2.

## Manager Execution instructions

  `cfy blueprints upload -p [blueprint-file-path] -b puppet`

  `cfy deployments create -b puppet -d puppet -i [inputs-file-path]`

  `cfy executions start -w install -d puppet`

## Local Execution instructions

  `cp inputs/local/aws.yaml.example inputs.yaml` or 
    `cp inputs/local/openstack.yaml.example inputs`

  ** Edit the inputs.yaml file with your cloud API credentials

  `cfy local init -p aws-ec2-blueprint-local.yaml -i inputs.yaml` or
    `cfy local init -p openstack-local.yaml -i inputs.yaml`

  `cfy local execute -w install --task-retries=9`

