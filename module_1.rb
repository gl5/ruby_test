#!/usr/bin/env ruby
# encoding: utf-8

module M
  def self.included(base)
    base.extend self
  end

  def prt(msg)
    p msg
  end
end

class A
  include M
end

class B
  extend M
end

a = A.new

a.prt("hello")
B.prt("world")
A.prt("nihao")
