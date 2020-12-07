FROM docker:latest

COPY entrypoint.sh /bin/

ENTRYPOINT entrypoint.sh
