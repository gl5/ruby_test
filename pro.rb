def call_proc(pr)
  a = "Jack"
  p a
  pr.call
end

a = "Tom"
pr = Proc.new { p a}
pr.call
call_proc(pr)
