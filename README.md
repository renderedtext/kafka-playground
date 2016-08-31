# Kafka Playground

Kafka playground for fun and excitement.

## Installing dependencies

``` bash
bundle install --path vendor/bundle
```

# How to play

First, start a Kafka broker:

``` bash
./run-kafka
```

Then, start a dummy message consumer:

``` bash
bundle exec ruby consumer.rb
```

Finally, publish some messages:

``` bash
bundle exec ruby publisher.rb
```
