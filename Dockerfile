FROM registry.access.redhat.com/ubi9/nginx-120

COPY index.html /usr/share/nginx/html

EXPOSE 8080
