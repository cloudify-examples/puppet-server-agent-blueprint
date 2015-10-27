#!/bin/bash

PUPPET_SERVER_IP=$(ctx target instance host_ip)
PUPPET_AGENT_HOSTNAME=$(/opt/puppetlabs/puppet/bin/facter fqdn)

ctx logger info "assigning agent_hostname runtime property"
ctx source instance runtime-properties agenthostname $PUPPET_AGENT_HOSTNAME

ctx logger info "Adding Puppet Server IP to Agent /etc/hosts file."
echo "${PUPPET_SERVER_IP} puppet" | sudo tee -a /etc/hosts
