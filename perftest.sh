host="fabmedical-558052.mongo.cosmos.azure.com"
username="fabmedical-558052"
password="v5jQXr7L1axQZGb1JGuviUdm42srTC3TvqaEIGf0keYxhEMZKEHgqkeiuMRnG3AdMaEf4txCxTd8auYhOIf37A=="
dbname="contentdb"
port="10255"

for i in {1..250}; do
    mongo $host:$port/$dbname \
        -u $username -p $password \
        --ssl --sslAllowInvalidCertificates \
        --eval 'db.sessions.insert({"title":"Perf Test"})' &
done
