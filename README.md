# alpine-cgit
A docker image based on alpine for Cgit-Lighttpd

---
Reference documents:

- [Lighttpd - Alpine Linux](https://wiki.alpinelinux.org/wiki/Lighttpd)
- [Cgit - Alpine Linux](https://wiki.alpinelinux.org/wiki/Cgit)

---
Example for `docker run`:
```
docker run -d -p 12345:80 -v /srv/repositories/:/srv/repositories/ alpine-cgit
```

---
The `scan-path` for `cgit.cgi` is:
```
scan-path=/srv/repositories/
```

---
The access URL in a web-browser is such as:
```
http://127.0.0.1:12345/git/
```

---
You can add a `cgitrc` file in git project dir in your `/srv/repositories/`, such as:
```
desc=BusyBox: The Swiss Army Knife of Embedded Linux
clone-url=git://busybox.net/busybox.git
owner=
```

---
