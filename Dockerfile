FROM registry.access.redhat.com/ubi9/nginx-120

COPY index.html /usr/share/nginx/html/index.html

EXPOSE 8080

# IMPORTANTISSIMO
CMD ["nginx", "-g", "daemon off;"]
