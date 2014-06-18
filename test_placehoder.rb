def name
  @name ||= ""
end

str = "hello #{name} bye"

p str

@name = "genglong"

p str
