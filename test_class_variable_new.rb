class Employee
  @@instances = {}

  def self.instances
    @@instances[self]
  end

  def store
    @@instances[self.class] ||= []
    @@instances[self.class] << self
  end

  def initialize name
    @name = name
  end
end

class Overhead < Employee; end
class Programmer < Employee; end

Overhead.new('Martin').store
Overhead.new('Roy').store
Programmer.new('Erik').store

p Overhead.instances.size
p Programmer.instances.size
