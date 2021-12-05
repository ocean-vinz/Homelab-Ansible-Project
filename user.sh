#!/bin/bash
ansible all -m group -a "name=ex294 state=present" -b
ansible all -m user -a "name=rhce password={{ 'password' | password_hash('sha512', 'mysecretsalt') }} uid=2021 groups=ex294 append=yes" -b
