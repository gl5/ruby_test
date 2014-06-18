class Parent
  private
  def name
    'Mommy'
  end
end

class Child < Parent
  def get_parent_name
    p name
    p self.name rescue p 'NoMethodError'
    p Parent.new.name rescue p 'NomethodError'
  end
end

Child.new.get_parent_name
