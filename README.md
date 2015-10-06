# cloudify-puppet-example

** Note: This repository is still in development and has no formal releases.

** Note: This repository contains several blueprints for installing a Puppet server and agent using Cloudify.

## About

  * Follows the install pattern for Puppet 4.2.
  * Currently only supports installation on Ubuntu 14.04.
  * Examples use Cloudify 3.2.
  * Currently only supports installation using a Manager (no Cloudify local workflows.)

# Execution instructions

  `cfy blueprints upload -p [blueprint-file-path] -b puppet`

  `cfy deployments create -b puppet -d puppet -i [inputs-file-path]`

  `cfy executions start -w install -d puppet`

