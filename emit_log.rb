#! /usr/bin/env ruby
# encoding: utf-8

require "bunny"

conn = Bunny.new
conn.start

ch = conn.create_channel
x = ch.fanout("logs")

msg = ARGV.empty? ? "Hello World!" : ARGV.join(" ")

x.publish(msg)
p " [x] Sent #{msg}"
conn.close
