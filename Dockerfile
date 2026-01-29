FROM registry.access.redhat.com/ubi9/httpd-24

# UBI httpd ascolta già su 8080
# DocumentRoot: /var/www/html

COPY index.html /var/www/html/index.html
COPY demo.gif /var/www/html/demo.gif

EXPOSE 8080
