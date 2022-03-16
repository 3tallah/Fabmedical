host="fabmedical-001.mongo.cosmos.azure.com"
username="fabmedical-001"
password="5XGsIsbvk4GqvRh8v5JmAVJHVmiQh2x2rI1tSLuLYExJGtNuepu3hGyZwJwh9Q4L56tbtHk3nL83DGpKYR5KNw=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
