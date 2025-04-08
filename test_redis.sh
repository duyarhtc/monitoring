#!/bin/bash
echo "Testing Redis via Docker..."
docker exec redis redis-cli ping
docker exec redis redis-cli SET test_key "Hello Docker Redis"
docker exec redis redis-cli GET test_key
docker exec redis redis-cli RPUSH test_list "item1" "item2"
docker exec redis redis-cli LRANGE test_list 0 -1
echo "Redis test completed."
