start = 0
step = 1

t = Thread.new do
  while true
    p start
    start += step
    sleep 5
  end
end

p "========the loop done=========="
p "bye"
t.join
