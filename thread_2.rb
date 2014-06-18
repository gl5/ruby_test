#!/usr/bin/env ruby
# encoding: utf-8

class Chaser
  attr_reader :count, :name

  def initialize(name)
    @name = name
    @count = 0
  end

  def chase(other)
    p "#{name} chase #{other.name}"
    while @count < 10
      while @count - other.count > 1
        Thread.pass
      end
      @count += 1
      p "#{name}: #{count}"
    end
  end
end

c1 = Chaser.new("A")
c2 = Chaser.new("B")

threads = [
  Thread.new { Thread.stop; c1.chase(c2)},
  Thread.new { Thread.stop; c2.chase(c1)}
]

start_index = rand(2)
p "start_index: #{start_index}"
threads[start_index].run
threads[1 - start_index].run
threads.each { |t| t.join}
