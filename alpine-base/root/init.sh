 #!/bin/sh
 go-dnsmasq --default-resolver --ndots "1" --fwd-ndots "0" --hostsfile=/etc/hosts >> /var/log/dns.log 2>&1