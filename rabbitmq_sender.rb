#! /usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q = ch.queue("hello_queue")

ch.default_exchange.publish("Hello World!", :routing_key => q.name)

p " [x] Sent 'Hello World!'"

conn.close
