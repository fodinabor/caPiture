#!/bin/bash

mkdir -p /usr/local/bin
cp bin/* /usr/local/bin

cp etc/systemd/system/capiture.service /etc/systemd/system/
systemctl daemon-reload
systemctl enable capiture.service
systemctl start capiture.service

echo "caPiture installed and service started."
echo "Use 'systemctl status capiture.service' to check the service status."
