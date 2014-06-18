hash = [ [:first_name, "Shane"], [:last_name, "Harvie"] ].inject({}) do |result, element| 
  result[element.first] = element.last
  result
end

p hash
