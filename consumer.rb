require "kafka"

puts "Connection to broker"

kafka = Kafka.new(
  seed_brokers: ["localhost:9092", "localhost:9092"],
  client_id: "test"
)

puts "Consuming message"

kafka.each_message(topic: "greetings") do |message|
  puts message.offset, message.key, message.value
end
