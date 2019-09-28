Requires docker.

Run ./run.sh to get the container running.

Edit /etc/resolv.conf file:
```
nameserver 127.0.0.1
search intr majordomo.ru
nameserver 80.80.80.80
nameserver 80.80.81.81
```

In case of `nscd` usage, restart it after changes in /etc/resolv.conf file.
``` shell
$ pgrep -fa nscd
18595 /gnu/store/…-glibc-2.28/sbin/nscd -f /gnu/store/…-nscd.conf --foreground
```

E.g. on Guix system to restart nscd invoke as root user:
``` shell
# herd restart nscd
```
