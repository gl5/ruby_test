p "input file name"
filename = gets
p filename
files = %w(
a.csv
)

files.each do |file|
  p file
  lines = File.readlines("#{file}")
  lines.each_with_index do |line, index|
    item = line.strip
    next if item.empty?
    p item
  end
end

