FROM registry.access.redhat.com/ubi9/httpd-24

# Apache su porta non privilegiata
RUN sed -i 's/Listen 80/Listen 8080/' /usr/local/apache2/conf/httpd.conf

# Permetti accesso al DocumentRoot standard
RUN sed -i '/<Directory "\/usr\/local\/apache2\/htdocs">/,/<\/Directory>/ s/Require all denied/Require all granted/' \
    /usr/local/apache2/conf/httpd.conf

# Sovrascrive la index di default
COPY index.html /usr/local/apache2/htdocs/index.html

# (opzionale) gif locale
COPY demo.gif /usr/local/apache2/htdocs/demo.gif

# Permessi per OpenShift (UID random)
RUN chgrp -R 0 /usr/local/apache2 \
 && chmod -R g=u /usr/local/apache2

EXPOSE 8080

CMD ["httpd-foreground"]
