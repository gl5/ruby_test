#!/usr/bin/env ruby
# encoding: utf-8

def fun1
  p "sleep 3 seconds in fun1"
  sleep(3)
end

def fun2
  p "sleep 2 seconds in fun2"
  sleep(2)
end

def fun3
  p "sleep 5 seconds in fun3"
  sleep(5)
end

threads = []
threads << Thread.new { fun1 }
threads << Thread.new { fun2 }
threads << Thread.new { fun3 }

threads.each { |t| t.join }
