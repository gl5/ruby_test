class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def name
    [first_name, last_name].join(' ')
  end

  def birthday!
    self.age = age + 1
  end

  private
  attr_accessor :age
end

p = Person.new("geng", "long", 26)
p p.name
p p.birthday!
