class Base
  def meth(info)
    p "this is Base #{info}"
  end
end

class Derived < Base
  def meth(info)
    p "this is derived #{info}"
    info = "over"
    super
  end
end

obj = Derived.new
obj.meth("test")
