#!/bin/bash
cassandra -R &

# Wait for Cassandra to start
echo "Waiting for Cassandra to start..."
until cqlsh -e 'DESCRIBE CLUSTER' >/dev/null 2>&1; do
    sleep 5
done

# Run any additional commands or scripts here
echo "Cassandra is running!"

# run the cql script
cqlsh -f /app/init.cql

echo "initial script"

# Keep the container running
tail -f /dev/null