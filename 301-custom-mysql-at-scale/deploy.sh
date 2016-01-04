#!/bin/bash

sudo service mysql stop

ADDRESS=`ifconfig eth0 | grep "inet addr" | sed 's/.*addr:\([0-9]*\.[0-9]*\.[0-9]*\.[0-9]\).*/\1/'`
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

REPLACEMENT='s/gcomm:\/\//gcomm:\/\/10.0.3.5,10.0.3.7,10.0.3.8,10.0.3.9,10.0.3.10,10.0.3.11,10.0.3.12,10.0.3.13,10.0.3.14,10.0.3.15,10.0.3.16,10.0.3.17,10.0.3.18,10.0.3.19,10.0.3.20,10.0.3.21,10.0.3.22,10.0.3.23,10.0.3.24,10.0.3.25,10.0.3.26,10.0.3.27,10.0.3.28,10.0.3.29,10.0.3.30,10.0.3.31,10.0.3.32,10.0.3.33,10.0.3.34,10.0.3.35,10.0.3.36,10.0.3.37,10.0.3.38,10.0.3.39,10.0.3.40/g'
sudo sed -i -- $REPLACEMENT /etc/mysql/conf.d/cluster.cnf

if [ $ADDRESS = "10.0.3.5" ]
then
	sudo service mysql start --wsrep-new-cluster
else
    sudo service mysql start
fi

sudo service zabbix-agent restart
