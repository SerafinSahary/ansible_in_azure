openssl req -newkey rsa:2048 -x509 -nodes -out ldap_cert.pem -keyout ldap.pem -days 1825
cat ldap_cert.pem >> ldap.pem
