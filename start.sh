#!/bin/bash
sudo sysctl -w net.ipv6.conf.eth0.disable_ipv6=0
sudo sysctl -w net.ipv6.conf.lo.disable_ipv6=0
sudo sysctl -p 
sleep 3
#sudo chown -R proxy:proxy /squid
#sudo -u proxy -- /squid/libexec/security_file_certgen -c -s /squid/var/logs/ssl_db -M 20MB

sudo -u proxy -- /squid/sbin/squid -z 
sudo -u proxy -- /squid/sbin/squid -Nsd 10 
#sudo -u proxy -- /squid/sbin/squid -d 10
#bash 
