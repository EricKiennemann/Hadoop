export brokers="kfk-brk-1.au.adaltas.cloud:6667,kfk-brk-2.au.adaltas.cloud:6667,kfk-brk-3.au.adaltas.cloud:6667"

export zk_quorum="zoo-1.au.adaltas.cloud:2181,zoo-2.au.adaltas.cloud:2181,kfk-brk-3.au.adaltas.cloud:2181/kafka"

/usr/hdp/current/kafka-broker/bin/kafka-console-producer.sh --broker-list $brokers --producer-property security.protocol=SASL_PLAINTEXT --topic dsti_2020_fall_1
