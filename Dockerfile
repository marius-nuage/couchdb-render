FROM couchdb:3

# --- Admin (mieux: mets-les dans Render, pas dans l'image)
ENV COUCHDB_USER=clev
ENV COUCHDB_PASSWORD=Production_1

# --- CORS persistant
COPY local.d/20-cors.ini /opt/couchdb/etc/local.d/20-cors.ini
RUN chown couchdb:couchdb /opt/couchdb/etc/local.d/20-cors.ini && chmod 0640 /opt/couchdb/etc/local.d/20-cors.ini

# IMPORTANT: ne PAS définir NODENAME, ne PAS surcharger CMD/ENTRYPOINT
EXPOSE 5984
