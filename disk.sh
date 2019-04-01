#!/bin/bash

cd /home && find . -maxdepth 2 -type f -name 'backup-*.tar.gz' | grep -v 'virtfs' > /tmp/tar
more /tmp/tar | awk '{ print "mv -f /home/"$1" /backup2//" }' > /tmp/move
more /tmp/move



echo " "
echo " "

cd /home && find . -maxdepth 2 -type d -name 'backup-*' | grep -v 'virtfs' > /tmp/dir
more /tmp/dir | awk  '{ print "rm -Rf /home/"$1 }' > /tmp/remdir
more /tmp/remdir
