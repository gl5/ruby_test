class Person
  def initialize(name)
    @name = name
  end

  def do_with_name
    yield @name
  end
end

person = Person.new("Oscar")

person.do_with_name do |name|
  p "Hey, his name is #{name}"
end

