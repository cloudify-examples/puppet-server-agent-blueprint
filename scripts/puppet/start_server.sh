#!/bin/bash

ctx logger info "Starting Puppet Server."
sudo service puppetserver start

#INSPECT NODE INSTANCE STATES
#Use node instance id to inspect issues
#cfy node-instances list

#SHOWS node instance runtime properties
#Know to look for specific node instance id (server vs server_host)
#Also shows AWS AMI CFY Pub IP address (ie 52.37.75.12)
#cfy node-instances get --node-instance-id puppet_server_24zs0d
#cfy node-instances get --node-instance-id puppet_server_host_7jsatb

#PULL EXECUTION LOGS FROM SPECIFIC DEPLOYMENT ID/EXECUTION ID
#cfy events list -l -e 0e22ff16-b7ce-4cf6-b076-4b84bb44cae2 > puppet-executions.log

#After script run error, run it manually
#NOW try to run puppet-server-agent-blueprint/scripts/puppet/start_server.sh
#Manually on PuppetServer host

#Command gave no error, but failed to start puppetserver
#Use return code failure test
#sudo service puppetserver start
#sudo service puppetserver stop
#sudo service puppetserver status

#sudo service puppetserver start || echo returncodefail
#returncodefail

#Chg to root, look for Puppet logs (root protected dirs)
#sudo su

#Investigate Puppet Logs on puppetserver host
#cd /var/log/puppetlabs/puppetserver/
#cat puppetserver-daemon.log

#ERROR found in /var/log/puppetlabs/puppetserver/puppetserver-daemon.log
#Insufficient memory for JRE to continue
#Error report to /tmp/hs_err_pidXXXX.log
