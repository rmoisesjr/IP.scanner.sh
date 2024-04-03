#!/bin/bash
for ip in $(seq 1 255);do
ping -c 1 192.168.1.$ip | grep "bytes from" | cut -d " " -f 4 | cut -d ':' 1 2>/dev/null >> ip.scanner.txt &
done
