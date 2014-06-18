#! /usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q = ch.queue("tasks")

begin
  p " [*] Waiting for tasks. To exit press CTRL+C"
  q.subscribe(:ack => true, :block => true) do |delivery_info, properties, body|
    p " [x] Received #{body}"
    sleep body.count(".").to_i
    p " [x] Done"

    ch.ack(delivery_info.delivery_tag)
  end
rescue Interrupt => _
  conn.close
  exit(0)
end
