open(__FILE__, "r:UTF-8:UTF-16LE") do |file|
  puts file.external_encoding.name
  puts file.internal_encoding.name
  file.each do |line|
    p [line.encoding.name, line[0...3]]
  end
end
