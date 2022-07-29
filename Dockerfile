ARG UPSTREAM_VERSION
ARG BEACON_API_PORT
FROM sigp/lighthouse:${UPSTREAM_VERSION}

COPY entrypoint.sh entrypoint.sh

EXPOSE $BEACON_API_PORT

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]