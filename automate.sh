#!/bin/bash
SED="/usr/bin/sed"
PLAYBOOK="/usr/bin/ansible-playbook"
PLAYBOOK_DIR="/home/user/RSL"
$PLAYBOOK $PLAYBOOK_DIR/cisco_get_iface.yml -i $PLAYBOOK_DIR/inventory_file
$SED -i '1s/^/[cisco]\n/' $PLAYBOOK_DIR/custom_inventory_file
$SED -i "\$a[cisco:vars]\nansible_network_os=ios\nansible_ssh_user=user\nansible_ssh_pass=password\nansible_ssh_common_args='-o StrictHostKeyChecking=no'" $PLAYBOOK_DIR/custom_inventory_file
$PLAYBOOK $PLAYBOOK_DIR/cisco_get_rsl.yml -i $PLAYBOOK_DIR/custom_inventory_file
/bin/true > $PLAYBOOK_DIR/custom_inventory_file
/bin/rm -rf $PLAYBOOK_DIR/backup/*.json
/usr/bin/python3 /home/user/RSL/rsl_status.py
