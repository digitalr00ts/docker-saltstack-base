FROM digitalr00ts/os:alpine

RUN cd && set -ex && \
  apk --no-cache add python2 py-mysqldb yaml gmp gnupg musl libffi ca-certificates libzmq libsodium git tini && \
  mkdir -p /etc/salt/ /etc/salt/pki/ \
    /var/cache/salt/master/ /etc/pki/tls/certs/

ENTRYPOINT ["/sbin/tini", "-g", "--"]

