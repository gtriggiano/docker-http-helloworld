FROM busybox

LABEL maintainer "Giacomo Triggiano <giacomo@creativecoding.it>"

COPY index.html /www/index.html
ENV BIND_PORT 5000

EXPOSE 5000

# Create a basic webserver and sleep forever
CMD ["sh", "-c", "httpd -p \"$BIND_PORT\" -f -h /www"]
