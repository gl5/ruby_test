module Greetings
  def say_hello
    p "Hello!"
  end
end

class Human
  include Greetings
end

Human.new.say_hello

begin
  Human.say_hello
rescue
  p "method not exist"
end

class Robot
  extend Greetings
end

begin
Robot.new.say_hello
rescue
  p "method not exist"
end

Robot.say_hello

