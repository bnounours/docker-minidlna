#/bin/sh

envsubst <minidlna.conf.tmpl >minidlna.conf

minidlnad -r -S -u $UID -f /etc/minidlna.conf
