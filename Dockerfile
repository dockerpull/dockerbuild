FROM docker:dind

COPY entrypoint.sh /bin/

ENTRYPOINT entrypoint.sh
