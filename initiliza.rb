class A
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class B < A
  attr_accessor :weight
  def initialize(name, age, weight)
    super(name, age)
    @weight = weight
  end
end

b = B.new("genglong", 26, 80)
p "=============================="
p b.weight
p b.name
p b.age



