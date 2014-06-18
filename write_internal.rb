#encoding: UTF-8

open("data.txt", "w:UTF-16LE") do |file|
  puts file.external_encoding.name
  puts file.internal_encoding
  data = "My data ..."
  p [data.encoding.name, data]
  file << data
end
p File.read("data.txt")
