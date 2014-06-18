class Word
  def initialize(string)
    @string = string
  end

  def <=>(other)
    return nil unless other.is_a?(self.class)
    @string.casecmp(other.to_s)
  end

  def to_s
    @string
  end
end

dictionary = (Word.new("aardvark")..Word.new("xylophone"))
p dictionary.cover?(Word.new("derp"))
