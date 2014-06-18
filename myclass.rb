class MyClass
  def MyClass.static_method1
    p "this is static method 1"
  end

  def instance_method1
    p "this is instance method 1"
  end

  def printf *a
    p "printf方法输出 #{a}"
  end
end

obj = MyClass.new

def obj.instance_method1
  p "overrided instance method 1"
end

m = obj.method "instance_method1"
m.call

n = obj.method "printf"
n.call 'aa', 'bb'
