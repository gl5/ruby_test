class A
  @@a = 0

  def self.add_one
    @@a += 1
  end

  def self.des_one
    @@a -= 1
  end

  def self.get_var
    @@a
  end
end

class B < A
end

p "A.get_var #{A.get_var}"
p "A.add_one #{A.add_one}"
p "A.get_var #{A.get_var}"
p "B.get_var #{B.get_var}"
p "B.add_one #{B.add_one}"
p "A.get_var #{A.get_var}"
p "B.get_var #{B.get_var}"
p "A.des_one #{A.des_one}"
p "A.get_var #{A.get_var}"
p "B.get_var #{B.get_var}"
