class Foo
  @@cls_var = 'foo'
  @cls_instvar = 'foo'

  def test
    p "instance"
    p "   class variable: #{@@cls_var}"
    p "   class instance variable: #{@cls_instvar}"
  end

  def self.test
    p "class"
    p "   class variable: #{@@cls_var}"
    p "   class instance variable: #{@cls_instvar}"
  end
end

class Bar < Foo
  @@cls_var = 'bar'
  @cls_instvar = 'bar'
end

f = Foo.new
p "-------------------------"
p "Foo"
p "-------------------------"
f.test
p "~~~~~~~~~~~~~~~~~~~~~~~~~"
Foo.test

p "-------------------------"
p "Bar"
p "-------------------------"
b = Bar.new
b.test
p "~~~~~~~~~~~~~~~~~~~~~~~~~"
Bar.test
