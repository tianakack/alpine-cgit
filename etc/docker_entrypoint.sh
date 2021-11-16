#!/bin/sh
openrc
touch /run/openrc/softlevel
rc-update add lighttpd default
rc-service lighttpd start
tail -f /dev/null
