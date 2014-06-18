(0..5).each do |i|
  p "Value: #{i}"
  retry if i > 2
end
