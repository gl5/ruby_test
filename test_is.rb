module Mother; end

class Father
  include Mother
end

class Son < Father; end

son = Son.new

p "kind_of"
p son.kind_of? Son 
p son.kind_of? Father 
p son.kind_of? Mother

p "is_a"
p son.is_a? Son
p son.is_a? Father
p son.is_a? Mother

p "instance_of"
p son.instance_of? Son
p son.instance_of? Father
p son.instance_of? Mother
