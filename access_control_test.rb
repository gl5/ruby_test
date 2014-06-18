class Person

  def speak
    p "protected: speak"
  end

  def laugh
    p "private: laugh"
  end

  protected :speak
  private :laugh

  def useSpeak(another)
    another.speak
  end

  def useLaugh(another)
    another.laugh
  end

end

p1 = Person.new
p2 = Person.new

p2.useSpeak(p1)
