FROM digitalr00ts/os:ubuntu

RUN cd && set -ex && \
  apt-get update && \
  apt-get install -y --no-install-recommends apt-transport-https ca-certificates && \
  apt-get install -y --no-install-recommends python && \
  apt-get install -y python-requests && \
  apt-get install -y --no-install-recommends \
  # salt-common #
  python-dateutil python-jinja2 python-msgpack python-pkg-resources python-yaml python-psutil \
  #python-mako \
  # salt-master #
  python-crypto \
  python-git \
  # salt-api # (recommends only)
  #python-cherrypy3 \
  # salt-cloud # (recommends and suggests)
  python-netaddr \
  #python-botocore \
  && \
  apt-get purge -y apt-transport-https ca-certificates && \
  apt-get autoremove -y && \
  apt-get clean && \
  rm -rf -- /tmp/* /var/tmp/* \
     /var/cache/apt/* /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/tini", "-g", "--"]

