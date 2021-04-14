FROM alpine:3.13

RUN apk update && apk upgrade && apk add ghostscript

COPY ./merge-pdfs.sh /
RUN chmod +x /merge-pdfs.sh

ENTRYPOINT ["/merge-pdfs.sh"]
