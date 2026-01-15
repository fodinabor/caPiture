#!/bin/bash

mkdir -p /usr/local/bin
cp bin/* /usr/local/bin

cp etc/systemd/system/capiture.service /etc/systemd/system/
cp etc/systemd/system/nextcloud-sync-capiture.service /etc/systemd/system/
cp etc/systemd/system/nextcloud-sync-capiture.timer /etc/systemd/system/
cp etc/systemd/system/nextcloud-sync.slice /etc/systemd/system/

systemctl daemon-reload

systemctl enable capiture.service
systemctl start capiture.service

systemctl enable nextcloud-sync-capiture.timer
systemctl start nextcloud-sync-capiture.timer


echo "caPiture installed and service started."
echo "Use 'systemctl status capiture.service' to check the service status."
