#!/bin/bash
for palavra in $(cat /usr/share/wordlists/fasttrack.txt);do
host -t cname $palavra.$1 | grep -v "alias for"
done

