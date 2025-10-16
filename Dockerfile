FROM couchdb:3

# Utilisateurs / mot de passe admin
ENV COUCHDB_USER=admin
ENV COUCHDB_PASSWORD=admin123

# NODENAME facultatif pour single-node : laisser "localhost" ou ne pas le définir du tout
ENV NODENAME=localhost

# (optionnel) cookie erlang, utile en cluster mais inoffensif en single-node
ENV COUCHDB_SECRET=mysecretcookie

EXPOSE 5984
