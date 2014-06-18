#!/usr/bin/env ruby
# encoding: utf-8

require 'securerandom'
require 'zlib'

data = SecureRandom.hex(4096000)
threads = []

16.times do
  threads << Thread.new {Zlib::Deflate.deflate(data) }
end

threads.each { |t| t.join }
