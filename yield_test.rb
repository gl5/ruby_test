def func
  p "calling func ..."
  yield
  p "leaving func ..."
end

func do |x|
  p "in func ..."
end
