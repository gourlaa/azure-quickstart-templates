#!/bin/bash

ADDRESS=`ifconfig eth0 | grep "inet addr" | sed 's/.*addr:\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\).*/\1/'`
HOSTNAME=`echo $(hostname)`
REPLACEMENT='s/br-pre-varnish1/'$HOSTNAME'/g'

sudo sed -i -- $REPLACEMENT /etc/zabbix/zabbix_agentd.conf

sudo sed -i -- 's/preprod.braineet.com/braineet.com/g' /etc/nginx/sites-available/default

sudo sed -i -- 's/10.0.0.4/10.0.1.6/g' /etc/varnish/default.vcl

sudo wget https://raw.githubusercontent.com/gourlaa/azure-quickstart-templates/master/301-custom-varnish-at-scale/general.crt
sudo mv general.crt /etc/nginx/ssl/

sudo sed -i -- 's/public.crt/general.crt/g' /etc/nginx/sites-available/default


sudo service varnish restart
sudo service nginx restart
sudo service zabbix-agent restart
