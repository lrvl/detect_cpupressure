#!/bin/bash
#
# Author:       Leroy van Logchem
# Purpose:      Report on running more CPU bound processes than CPU cores available
# Requirements: Linux kernel with vmlinuz-$MAJOR psi=1 (see /proc/cmdline)

if grep -qP "avg10=[1-9]{1,}\d" /proc/pressure/cpu; then
  echo -e "$(date) Inefficiency detected: More CPU bound processes than $(nproc) cores\n"
  ps -a -o pcpu,comm,args,pcpu --sort=-pcpu | grep -vP "0.\d$"
fi
