#!/bin/bash -xe
DUMP_FILE_NAME="$(hostname)__"$1"-$(date +"%Y-%m-%d-%Hh%Mmin" ).sql.gz"
mysqldump $1 |gzip   > /tmp/$DUMP_FILE_NAME
scp /tmp/$DUMP_FILE_NAME backup.deenamic.fr:/box/SharedFiles/
rm -f /tmp/$DUMP_FILE_NAME
echo "File Name: "$1 "is in the root directory access using this link : http://share.deenamic.fr:8086/"
