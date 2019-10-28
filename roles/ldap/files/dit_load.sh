#!/bin/bash

service slapd stop
rm -f /var/lib/ldap/*
slapadd -n1 -v -l /root/ldap/wencel_org.ldif -F /etc/ldap/slapd.d/  2>&1 > /root/ldap/dit_load.out
slapindex -n1 -F /etc/ldap/slapd.d/  2>&1 >> /root/ldap/dit_load.out
chown -v openldap:openldap /var/lib/ldap/*
service slapd start
