#!/bin/bash
echo "Testing PostgreSQL via Docker..."
docker exec postgres psql -U admin -d appdb -c "\conninfo"
docker exec postgres psql -U admin -d appdb -c "SELECT version();"
docker exec postgres psql -U admin -d appdb -c "CREATE TABLE IF NOT EXISTS test_table (id SERIAL PRIMARY KEY, name TEXT);"
docker exec postgres psql -U admin -d appdb -c "INSERT INTO test_table (name) VALUES ('Test1'), ('Test2');"
docker exec postgres psql -U admin -d appdb -c "SELECT * FROM test_table;"
echo "PostgreSQL test completed."
