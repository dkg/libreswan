/testing/guestbin/swan-prep --x509 --revoked
certutil  -d sql:/etc/ipsec.d -D -n east
ipsec start
/testing/pluto/bin/wait-until-pluto-started
ipsec whack --debug-all --impair retransmits
ipsec auto --add nss-cert-crl
ipsec auto --status |grep nss-cert-crl
echo "initdone"
