class AbstractPingPongPlayer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def play(opponent)
    winner = if opponent.skill_level > skill_level
               opponent
             else
               self
             end

    p "#{winner.name} wins!"
  end

  protected
  attr_reader :skill_level
end

class AmateurPingPongPlayer < AbstractPingPongPlayer
  def initialize(*args)
    super
    @skill_level = rand(50)
  end
end

class ProPingPongPlayer < AbstractPingPongPlayer
  def initialize(*args)
    super
    @skill_level = rand(50) + 50
  end
end

jane = ProPingPongPlayer.new("Jane")
susan = AmateurPingPongPlayer.new("Susan")

begin
  p jane.skill_level
rescue
  p "get jane skill_legel failed"
end

p "++++++++++++++++++++++++"
susan.play(jane)
p "========================"
jane.play(susan)
p "------------------------"
