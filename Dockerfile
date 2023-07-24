FROM registry.access.redhat.com/rhel7

# Squid image for OpenShift Origin

ARG DO_UPGRADE=
ENV DEBIAN_FRONTEND=noninteractive


    RUN apt-get install -y --no-install-recommends squid \
    && mv /nocache.acl /squid.conf /etc/squid/ \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man /tmp/* \
    && for d in /var/spool/squid /var/log/squid /etc/squid; \
	do \
	    mkdir -p $d \
	    && chown -R 1001:0 $d \
	    && chmod -R g=u $d; \
	done \
    && chown -R 1001:0 /var/run \
    && chmod -R g=u /var/run \
    && ln -sf /dev/stdout /var/log/squid/access.log \
    && ln -sf /dev/stdout /var/log/squid/store.log \
    && ln -sf /dev/stdout /var/log/squid/cache.log \
    && echo "# Cleaning Up" \
    && apt-get clean \
    && apt-get autoremove --purge -y \
    && rm -rvf /usr/share/man /usr/share/doc /var/lib/apt/lists/* \
    && unset HTTP_PROXY HTTPS_PROXY NO_PROXY DO_UPGRADE http_proxy https_proxy

USER 1001
ENTRYPOINT ["dumb-init","--","/run-squid.sh"]
