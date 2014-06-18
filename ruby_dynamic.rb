class Dynamic
  def a
    p "this is method a"
  end

  def b(bob)
    p "this is method b:#{bob}"
  end

  def c
    p "this is method c"
  end

  def self.define_component(name)
    define_method(name) do
      p "my name is #{name}"
    end
  end

  define_component :computer
  define_component :car

  def method_missing(name, *args)
    p "========================="
    p name
    p "========================="
    methodname = name.to_s
    super if !%w[and sky fly].include? methodname
    p "method name is: #{name}. args:#{args}"
  end
end

d = Dynamic.new
d.a
d.send(:b, "alice")
d.send("c")
d.car()
d.computer()
d.fly("in the fly")
d.bob()
