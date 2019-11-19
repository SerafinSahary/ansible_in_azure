ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R [127.0.0.1]:2222
ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R [127.0.0.1]:2200
ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R [127.0.0.1]:2201

ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R 192.168.33.101
ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R 192.168.33.102
ssh-keygen -f "/home/serafin/.ssh/known_hosts" -R 192.168.33.103

ssh -o "StrictHostKeyChecking=accept-new" -p 2222 vagrant@127.0.0.1 /bin/true
ssh -o "StrictHostKeyChecking=accept-new" -p 2200 vagrant@127.0.0.1 /bin/true
ssh -o "StrictHostKeyChecking=accept-new" -p 2201 vagrant@127.0.0.1 /bin/true

ssh -o "StrictHostKeyChecking=accept-new" vagrant@192.168.33.101 /bin/true
ssh -o "StrictHostKeyChecking=accept-new" vagrant@192.168.33.102 /bin/true
ssh -o "StrictHostKeyChecking=accept-new" vagrant@192.168.33.103 /bin/true

