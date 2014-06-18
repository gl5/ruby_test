y = Thread.new { 10.times { sleep 1; p 'tick...'}}
p "waiting" until y.join(5)
