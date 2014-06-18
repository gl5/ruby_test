class Bird
  @@legs = 2

  def eat
    p "i am eating"
  end

  def comefrom(location)
    @birthplace = location
    p "i am from #{@birthplace}, i have #{@@legs} legs"
  end
end

class Crow < Bird
  @plumecolor = "black"

  def peck
    p "i am pecking. color is #{plumecolor}"
  end

  def self.showcolor
    p "plume color is #{@plumecolor}, i have #{@@legs} legs"
  end
end


