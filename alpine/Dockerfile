FROM digitalr00ts/os:alpine

RUN cd && set -ex && \
  apk --no-cache add python2 py-mysqldb yaml gmp gnupg musl libffi ca-certificates libzmq libsodium && \
  mkdir -p -- /srv/etc/salt/master.d/ /srv/etc/salt/pki/ \
    /srv/etc/salt/ssh.d/ /srv/salt/ /srv/pillar/ \
    /etc/salt/ /var/cache/salt/master/

ENTRYPOINT ["/sbin/tini", "-g", "--"]

