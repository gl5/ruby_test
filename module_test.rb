module A

  def self.say
    "hello"
  end

  def say
    "world"
  end
end

class B
  include A
end

class C
  extend A
end

p B.new.say
p C.say
p A.say
