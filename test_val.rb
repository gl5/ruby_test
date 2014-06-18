class A
  attr_accessor :a, :b, :c
end

class B < A
  attr_accessor :d
  def test
    p @d
    p @a
    p self.c
  end
end

object = B.new
object.d = "d"
object.c = "c"
object.test
