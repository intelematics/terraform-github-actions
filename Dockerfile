FROM alpine:3 

LABEL "com.github.actions.icon"="download"
LABEL "com.github.actions.color"="purple"

RUN ["/bin/sh", "-c", "apk add --update --no-cache bash ca-certificates curl git jq openssh python3 gcc python-dev python3-dev linux-headers libc-dev libffi-dev openssl-dev"]

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/main.sh"]
