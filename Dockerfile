FROM couchdb:3

# ====== CONFIG ADMIN / SINGLE NODE ======
ENV COUCHDB_USER=clev
ENV COUCHDB_PASSWORD=Production_1
ENV NODENAME=nonode@127.0.0.1
ENV COUCHDB_SECRET=mysecretcookie
ENV ERL_FLAGS="+A 4"

# ====== COPIE CONFIG CORS PERSISTANTE ======
COPY local.d/20-cors.ini /opt/couchdb/etc/local.d/20-cors.ini
RUN chown couchdb:couchdb /opt/couchdb/etc/local.d/20-cors.ini && chmod 0640 /opt/couchdb/etc/local.d/20-cors.ini

# ====== INITIALISATION SINGLE NODE ======
CMD ["bash", "-c", "exec /docker-entrypoint.sh couchdb & sleep 10 && curl -s -X POST http://127.0.0.1:5984/_cluster_setup -H 'Content-Type: application/json' -d '{\"action\":\"enable_single_node\",\"username\":\"clev\",\"password\":\"Production_1\",\"bind_address\":\"0.0.0.0\",\"port\":5984,\"node_count\":\"1\"}' && tail -f /dev/null"]

EXPOSE 5984
