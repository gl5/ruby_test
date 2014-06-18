def fibonacci(max=Float::INFINITY)
  return to_enum(_method_, max) unless block_given?
  yield previous = 0
  while (i ||= 1) < max
    yield i
    i, previous = previous + i, i
  end
  previous
end

fibonacci(100) { |i| puts i}
