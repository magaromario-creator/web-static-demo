FROM registry.access.redhat.com/ubi9/nginx-120

COPY index.html /usr/share/nginx/html/index.html

# Permessi OpenShift-friendly
RUN chgrp -R 0 /usr/share/nginx/html \
 && chmod -R g+rwX /usr/share/nginx/html

EXPOSE 8080
