#!/bin/bash

ADDRESS=`ifconfig eth0 | grep "inet addr" | sed 's/.*addr:\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]\).*/\1/'`
HOSTNAME=`echo $(hostname)`
REPLACEMENT='s/br-pre-apache1/'$HOSTNAME'/g'

sudo sed -i -- $REPLACEMENT /etc/zabbix/zabbix_agentd.conf


sudo sed -i -- 's/-preprod.braineet.com/.braineet.com/g'  /etc/apache2/sites-available/braineet.conf
sudo sed -i -- 's/.preprod.braineet.com/.braineet.com/g'  /etc/apache2/sites-available/braineet.conf
sudo sed -i -- 's/preprod.braineet.com/braineet.com/g'  /etc/apache2/sites-available/braineet.conf

sudo sed -i -- 's/ServerName braineet.com/ServerName braineet.com\\nServerAlias www.braineet.com/g'  /etc/apache2/sites-available/braineet.conf


sudo service apache2 restart

sudo service zabbix-agent restart
