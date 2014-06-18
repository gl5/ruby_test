def what_am_i(&block)
  block.class
end

puts what_am_i {}
