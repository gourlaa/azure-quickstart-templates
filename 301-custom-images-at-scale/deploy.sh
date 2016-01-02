#!/bin/bash

ADDRESS=`ifconfig eth0 | grep "inet addr" | sed 's/.*addr:\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]\).*/\1/'`
HOSTNAME=`echo $(hostname)`
REPLACEMENT='s/br-pre-apache1/'$HOSTNAME'/g'

sudo sed -i -- $REPLACEMENT /etc/zabbix/zabbix_agentd.conf


