#!/bin/bash

PUPPET_AGENT_HOSTNAME=$(ctx source instance runtime-properties agenthostname)
sudo /opt/puppetlabs/bin/puppet cert sign $PUPPET_AGENT_HOSTNAME
