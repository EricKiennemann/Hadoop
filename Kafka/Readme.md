test
export brokers="kfk-brk-1.au.adaltas.cloud:6667"
export zk_quorum="zoo-1.au.adaltas.cloud:2181"


echo "a" | producer ...
echodelay.sh |
#how to run this file .... 
  bash echodelay.sh
  chmod +x echodelay.sh and then ./echodelay.sh
  
topic = dsti_2020_fall_1

export brokers="kfk-brk-1.au.adaltas.cloud:6667,kfk-brk-2.au.adaltas.cloud:6667,kfk-brk-3.au.adaltas.cloud:6667"

export zk_quorum="zoo-1.au.adaltas.cloud:2181,zoo-2.au.adaltas.cloud:2181,kfk-brk-3.au.adaltas.cloud:2181/kafka"

producer: /usr/hdp/current/kafka-broker/bin/kafka-console-producer.sh --broker-list $brokers --producer-property security.protocol=SASL_PLAINTEXT --topic dsti_2020_fall_1

consumer: /usr/hdp/current/kafka-broker/bin/kafka-console-consumer.sh --bootstrap-server $brokers --consumer-property security.protocol=SASL_PLAINTEXT --topic dsti_2020_fall_1


