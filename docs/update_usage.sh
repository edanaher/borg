#!/usr/bin/bash
echo -n > usage.rst 
for cmd in change-passphrase create delete extract init mount prune verify; do
  LINE=`echo -n attic $cmd | tr 'a-z- ' '~'`
  echo -e ".. _usage_attic_$cmd:\n\nattic $cmd\n$LINE\n::\n" >> usage.rst
  attic $cmd -h >> usage.rst
done