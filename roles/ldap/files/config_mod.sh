#!/bin/bash

ldapmodify -vv -Y EXTERNAL -H ldapi:/// -f /root/ldap/config_mod.ldif 2>&1 > /root/ldap/config_mod.out
ldapadd -v -Y EXTERNAL -H ldapi:/// -f /root/ldap/modules.ldif 2>&1 >> /root/ldap/config_mod.out
ldapmodify -v -Y EXTERNAL -H ldapi:/// -f /root/ldap/config_database_mod.ldif 2>&1 >> /root/ldap/config_mod.out
ldapadd -v -Y EXTERNAL -H ldapi:/// -f /root/ldap/openssh-lpk-schema.ldif 2>&1 >> /root/ldap/config_mod.out
