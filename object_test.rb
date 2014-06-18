class Object
  def abc
    p "instance abc"
  end
end

obj = Object.new
obj.abc
Object.abc

p Object.class
