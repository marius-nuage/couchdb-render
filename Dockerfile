FROM couchdb:3

# Utilisateurs / mot de passe admin
ENV COUCHDB_USER=clev
ENV COUCHDB_PASSWORD=Production_1

# NODENAME facultatif pour single-node : laisser "localhost" ou ne pas le définir du tout
ENV NODENAME=localhost

# (optionnel) cookie erlang, utile en cluster mais inoffensif en single-node
ENV COUCHDB_SECRET=mysecretcookie

EXPOSE 5984
