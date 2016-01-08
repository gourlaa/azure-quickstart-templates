#!/bin/bash

sudo service mysql stop

ADDRESS=`ifconfig eth0 | grep "inet addr" | sed 's/.*addr:\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]*\).*/\1/'`
HOSTNAME=`echo $(hostname)`

REPLACEMENT='s/vmprodmaria0000/'$HOSTNAME'/g'
sudo sed -i -- $REPLACEMENT /etc/zabbix/zabbix_agentd.conf

REPLACEMENT='s/vmprodmaria0000/'$HOSTNAME'/g'
sudo sed -i -- $REPLACEMENT /etc/fpmmm/fpmmm.conf

REPLACEMENT='s/dbvmprodmaria0000/db'$HOSTNAME'/g'
sudo sed -i -- $REPLACEMENT /etc/fpmmm/fpmmm.conf

REPLACEMENT='s/10.0.3.5/'$ADDRESS'/g'
sudo sed -i -- $REPLACEMENT /etc/mysql/conf.d/cluster.cnf

REPLACEMENT='s/vmprodmaria0000/'$HOSTNAME'/g'
sudo sed -i -- $REPLACEMENT /etc/mysql/conf.d/cluster.cnf

REPLACEMENT='s/gcomm:\/\//gcomm:\/\/10.0.3.9,10.0.3.16,10.0.3.12,10.0.3.15,10.0.3.13,10.0.3.11,10.0.3.19,10.0.3.18,10.0.3.21,10.0.3.22,10.0.3.39,10.0.3.25,10.0.3.31,10.0.3.35,10.0.3.36,10.0.3.24,10.0.3.23,10.0.3.32,10.0.3.38,10.0.3.40,10.0.3.42,10.0.3.57,10.0.3.53,10.0.3.52,10.0.3.49,10.0.3.51,10.0.3.47,10.0.3.46,10.0.3.48,10.0.3.50,10.0.3.55,10.0.3.54,10.0.3.56,10.0.3.44,10.0.3.45,10.0.3.43/g'
sudo sed -i -- $REPLACEMENT /etc/mysql/conf.d/cluster.cnf
