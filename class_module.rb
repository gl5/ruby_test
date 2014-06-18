module AA
  class BB
    def fun
      AA::CC.fun2
    end
  end

  module CC extend self
    def fun2
      p "fun2 in module CC"
    end
  end
end

obj = AA::BB.new
obj.fun

class DD
  include AA::CC
end

dd = DD.new
dd.fun2

class EE
  extend AA::CC
end

EE.fun2

module FF extend self
  def fun3
    p "fun3 in module FF"
  end
end

FF.fun3
