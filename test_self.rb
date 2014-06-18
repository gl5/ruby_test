class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def talk
    p name
  end


