#!/usr/bin/env ruby
# encoding: utf-8

require 'monitor'

# 要读取的文件
filename = ARGV[0]

total = 0

# 存放数据的队列
q = Queue.new

# 读取文件的线程
a = Thread.new do
  p "读取文件的线程启动"
  File.open(filename, 'r') do |file|
    i = 0
    file.each_line do |line|
      q << line
      i += 1
      total += 1
      if total >= 25
        p "退出读取文件的线程"
        Thread.exit
      end
      if i >= 5
        i = 0
        p "阻塞读取文件的线程"
        Thread.pass
      end
    end
  end
end

# 输出队列数据的线程
b = Thread.new do
  p "输出队列数据的线程启动"
  loop do
    while q.size == 0
      Thread.pass
    end
    while q.size > 0
      p q.pop
    end
    if total >= 25
      p "退出输出队列数据的线程"
      Thread.exit
    end
  end
end

a.join
b.join
