def foo
  f = Proc.new { return "return from foo from inside pro"}
  f.call

  return "return from foo"
end

def bar
  f = lambda { return "return from lambda"}
  p f.call

  return "return from bar"
end

p foo
p "====================================="
p bar
