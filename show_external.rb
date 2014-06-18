open(__FILE__, "r:UTF-8") do |file|
  puts file.external_encoding.name
  p file.internal_encoding
  file.each do |line|
    p [line.encoding.name, line]
  end
end
