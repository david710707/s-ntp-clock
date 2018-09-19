processId=$(ps | grep 'snmpd' | grep -v 'grep' | awk '{ printf $1 }')
echo $processId
kill $processId

snmpd -c /sysconf/net-snmp/snmp/snmpd.conf
