FROM registry.access.redhat.com/ubi9/nginx-120

# Copia i contenuti dove nginx UBI se li aspetta
COPY index.html /opt/app-root/src/

# (opzionale, ma consigliato)
RUN chgrp -R 0 /opt/app-root/src \
 && chmod -R g+rwX /opt/app-root/src

EXPOSE 8080
