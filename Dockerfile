# Utilise l’image officielle de CouchDB
FROM couchdb:3

# Définit les variables d’environnement de base
ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=admin123
ENV COUCHDB_SECRET=mysecretcookie
ENV NODENAME=couchdb@localhost

# Expose le port CouchDB
EXPOSE 5984
