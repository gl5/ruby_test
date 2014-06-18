#! /usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q = ch.queue("hello_queue")

begin
  p " [*] Waiting for messages. To exit press CTRL+C"
  q.subscribe(:block => true) do |delivery_info, properties, body|
    p " [x] Received #{body}"
  end
rescue Interrupt => _
  conn.close
  exit(0)
end
