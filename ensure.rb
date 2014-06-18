def func
  p "get into func ..."
  return
rescue => e
  p "exception occured: #{e.message}"
ensure
  p "ensure ..."
end

func
