#!/usr/bin/env ruby
# encoding: utf-8

require 'monitor'

class Counter < Monitor

  attr_reader :count

  def initialize
    @count = 0
    super
  end

  def tick
    synchronize do
      p Thread.current
      @count += 1
      p @count
    end
  end
end

c = Counter.new

t1 = Thread.new("thread_1") { 100.times {c.tick}}
t2 = Thread.new("thread_2") { 100.times {c.tick}}

t1.join
t2.join
