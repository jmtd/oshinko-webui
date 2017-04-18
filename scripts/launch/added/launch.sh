#!/bin/bash

export OSHINKO_SA_TOKEN=`cat /var/run/secrets/kubernetes.io/serviceaccount/token`
. /opt/rh/rh-nodejs4/enable
npm start
