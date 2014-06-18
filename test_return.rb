def test_return
  p "============================="
  l = lambda{return}
  l.call
  p "i am here"
  pr = Proc.new {return}
  pr.call
  p "bye"
end

test_return
