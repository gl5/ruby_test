def func
  p "func raise exception......"
  raise NameError, "userdef exception raised"
rescue => e
  raise e
ensure
  p "always ...."
end

func
