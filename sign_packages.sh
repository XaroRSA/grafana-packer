#!/bin/bash

echo $PRIVATE_GPG_KEY > private.key

cat private.key | wc -l

gpg --allow-secret-key-import --import private.key

wget https://grafanarel.s3.amazonaws.com/builds/grafana-2.0.0_beta3-1.x86_64.rpm

cp rpmmacros ~/.rpmmacros

./sign_expect *.rpm
