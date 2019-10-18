#!/bin/bash

#chmod -R o+w /data/shopcx-es
sysctl -w vm.max_map_count=262144
sysctl -w vm.max_map_count=262144 && echo 'vm.max_map_count=262144' >> /etc/sysctl.conf
sysctl -p
#If using Docker swarm you will need to disable swapping for mem limit with:

echo -e "[Service]\nLimitMEMLOCK=infinity" | SYSTEMD_EDITOR=tee systemctl edit docker.service
systemctl daemon-reload
systemctl restart docker
