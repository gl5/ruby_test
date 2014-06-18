class Employee
  class << self; attr_accessor :instances; end

  def store
    self.class.instances ||= []
    self.class.instances << self
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
