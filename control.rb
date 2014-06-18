class Person

  def say
    p "hi"
  end

  def age
    p 20
  end

  def sex
    p "boy"
  end

  private :age
  protected :sex
end

p = Person.new

p "========================="
p p.say
p p.sex
p p.age
