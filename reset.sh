#!/bin/bash

vagrant destroy chef_client
./destroyrepo.sh
./createrepo.sh
vagrant up chef_client
