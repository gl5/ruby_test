Struct.new("C", :x, :y)
#C = Struct.new(:x, :y)
c = Struct::C.new(1, 2)
p c.class
p c.x
p c.y
c.x, c.y = c.y, c.x
p c.x
p c.y
