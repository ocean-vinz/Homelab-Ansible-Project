#!/bin/bash
ansible prod -m file -a "path=/root/redhat/ex294 state=directory mode='0755'" -b
ansible prod -m file -a "path=/root/redhat/ex294/results state=touch mode='0575' owner=mark group=mark" -b
ansible prod -m file -a "src=/root/redhat/ex294/results dest=/root/results state=link" -b
