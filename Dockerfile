FROM busybox

RUN adduser -D static
USER static
WORKDIR /home/static

COPY ./html /home/static
CMD ["busybox", "httpd", "-f", "-v", "-p", "3000"]

