FROM registry.access.redhat.com/ubi9/nginx-120

COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 8080
