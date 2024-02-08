kafka-topics --bootstrap-server kafka:9092 \
--create \
--topic vehicle-positions \
--partitions 6 \
--replication-factor 1


kafka-topics --bootstrap-server kafka:9092 \
--create \
--topic test-topic \
--partitions 3 \
--replication-factor 1


kafka-console-producer --broker-list kafka:9092 \
--topic test-topic


kafka-console-consumer --bootstrap-server kafka:9092 \
--topic test-topic \
--from-beginning


kafka-console-producer --broker-list kafka:9092 \
--topic test-topic \
--property parse.key=true \
--property key.separator=,

kafka-console-consumer --bootstrap-server kafka:9092 \
--topic test-topic \
--from-beginning \
--property print.key=true