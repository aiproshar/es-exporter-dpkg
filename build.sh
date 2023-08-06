#!/bin/sh

echo "starting deb build process"
dpkg-deb --build ./elasticsearch_exporter-1.6.0-linux-amd64
echo "installing debian package"
dpkg -i elasticsearch_exporter-1.6.0-linux-amd64.deb


systemctl enable es-exporter
systemctl daemon-reload
systemctl start es-exporter