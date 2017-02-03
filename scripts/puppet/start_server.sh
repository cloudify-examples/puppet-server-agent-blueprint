#!/bin/bash

ctx logger info "Starting Puppet Server."
sudo service puppetserver start || ctx logger error "Puppet Server Failed To Start."
