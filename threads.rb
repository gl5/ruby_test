#!/usr/bin/env ruby
# encoding: utf-8

threads = []

10.times do |i|
  p "creating new thread ..."
  threads << Thread.new { while true; p i and sleep 1; end }
end

threads.each { |thr| thr.join}
