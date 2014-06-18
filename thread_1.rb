#!/usr/bin/env ruby
# encoding: utf-8

count = 0
threads = []

20.times do |i|
  threads[i] = Thread.new do
    Thread.current["mycount"] = count
    sleep 2
    count += 1
  end
end

threads.each { |t| t.join; p t["mycount"], ", "}
p count
