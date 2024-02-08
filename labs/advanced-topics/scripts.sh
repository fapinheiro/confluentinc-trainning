docker exec advanced-topics-kafka-1 \
    kafka-consumer-groups \
    --bootstrap-server kafka:9092 \
    --group vp-consumer \
    --describe