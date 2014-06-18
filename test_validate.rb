params = {name: "genglong", age: nil}

def validate_params(params)
  params[:age] ||= 25
end

validate_params(params)

p params
  
