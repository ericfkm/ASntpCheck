#!/bin/sh
# credit to OpenNTPProject for the IP address and UDomain Developer Stephen WAN for the perl script
# To get the list of NTP server

curl -s "http://openntpproject.org/searchby-asn.cgi?search_asn=$1"|perl -lne 'if (m{^.*?<td>([\d.]+)</td>.*$}i) { print `ntpdc -n -c monlist $1`};'
