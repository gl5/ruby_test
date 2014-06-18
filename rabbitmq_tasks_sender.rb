#! /usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
q = ch.queue("tasks")

msg = ARGV.empty? ? "Hello World!" : ARGV.join(" ")
q.publish(msg, :persistent => true)
p " [x] Published #{msg}"

conn.close
