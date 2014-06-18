class Foo
  def self.bar
    p "class method"
  end

  def baz
    p "instance method"
  end
end

Foo.bar
Foo.new.baz
Foo.new.class.bar
