FROM alpine
EXPOSE 80
VOLUME ["/sys/fs/cgroup"]
COPY ["./etc", "/etc"]
RUN apk add --update openrc cgit git lighttpd \
    && chmod u+x /etc/docker_entrypoint.sh \
    && echo 'include "cgit.conf"' >> /etc/lighttpd/lighttpd.conf
ENTRYPOINT ["/etc/docker_entrypoint.sh"] 

#
# docker volume ls
# docker ps -a
#
# docker rm $(docker ps -aq)
# docker volume rm $(docker volume ls -q)
# docker rmi $(docker images -f "dangling=true" -q)
# docker rmi alpine-cgit
#
# docker build -t alpine-cgit .
# docker images -a
#
# docker run -d -p 12345:80 -v /srv/repositories/:/srv/repositories/ alpine-cgit
#
# docker exec -it $(docker ps -f "ancestor=alpine-cgit" -q) /bin/sh
#
# docker stop $(docker ps -f "ancestor=alpine-cgit" -q)
#


