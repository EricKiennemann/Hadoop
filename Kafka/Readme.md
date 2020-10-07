
# Kafka workshop

## Define environment variable

export brokers="kfk-brk-1.au.adaltas.cloud:6667,kfk-brk-2.au.adaltas.cloud:6667,kfk-brk-3.au.adaltas.cloud:6667"

export zk_quorum="zoo-1.au.adaltas.cloud:2181,zoo-2.au.adaltas.cloud:2181,kfk-brk-3.au.adaltas.cloud:2181/kafka"

## Connect to the edge server with two different terminal

* open the VPN
* connect with ssh
ssh k.eric-dsti@edge-1.au.adaltas.cloud
* go to /kafka folder

## The "Producer" is on the first terminal

* cd kafka
* bash echodelay.sh | bash producer.sh
* or "chmod +x echodelay.sh" and "chmod +x producer.sh" and then "./echodelay.sh | ./producer.sh"

## The "Consumer" is on the second terminal

* cd kafka
* bash consumer.sh
* or  chmod +x consumer.sh and then "./consumer.sh"

## Result of topic "dsti_2020_fall_1

![](.//images/Kafka.jpg)
