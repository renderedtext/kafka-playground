require "kafka"

puts "Connection to broker"

kafka = Kafka.new(
  seed_brokers: ["localhost:9092", "localhost:9092"],
  client_id: "test"
)

puts "Delivering message"
kafka.deliver_message("Hello, World!", topic: "greetings")
