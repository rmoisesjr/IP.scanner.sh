#!/bin/bash
for ip in $(seq 1 254);do
ping -c 1192.168.1.$ip | grep "64 bytes" | cut -d ' ' -f 4 | tr -d ':' >> ip.scanner.txt 
done
