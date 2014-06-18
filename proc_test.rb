a = "a"
b = "b"
c = "c"

pr = Proc.new { p "#{a}, #{b}, #{c} "}

def call_proc(pr)
  pr.call
end

p "================================="
pr.call
p "================================="
call_proc(pr)

a, b, c = b, c, a

p "================================="
pr.call
p "================================="
call_proc(pr)
