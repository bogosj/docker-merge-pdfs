FROM alpine:3.8

RUN apk update && apk upgrade && apk add pdftk ghostscript

RUN mkdir -p /work/files
RUN mkdir -p /work/scripts
WORKDIR /work/files
VOLUME ["/work/files"]

COPY ./merge-pdfs.sh /work/scripts/
RUN chmod +x /work/scripts/merge-pdfs.sh

ENTRYPOINT ["/work/scripts/merge-pdfs.sh"]
