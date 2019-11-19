openssl req -newkey rsa:2048 -x509 -nodes -out dummy_cert.pem -keyout dummy.pem -days 1825
cat dummy_cert.pem >> dummy.pem

