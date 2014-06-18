class Employee
  @@instances = []

  def self.instances
    @@instances
  end

  def store
    @@instances << self
  end

  def initialize name
    @name = name
  end
end

class Programmer < Employee; end
class Overhead < Employee; end

Overhead.new('Martin').store
Overhead.new('Roy').store
Programmer.new('Erik').store

p Overhead.instances.size
p Programmer.instances.size
