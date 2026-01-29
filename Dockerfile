FROM registry.access.redhat.com/ubi9/httpd-24

# UBI httpd ascolta già su 8080
# DocumentRoot: /var/www/html

COPY index.html /var/www/html/index.html
COPY demo.gif /var/www/html/demo.gif

# Permessi compatibili con OpenShift (UID random)
RUN chgrp -R 0 /var/www && chmod -R g=u /var/www

EXPOSE 8080
