class CommandInterpreter
  def do_1()
    p "this is 1\n"
  end

  def do_2()
    p "this is 2\n"
  end

  def do_3()
    p "this is 3\n"
  end

  def do_4()
    p "this is 4\n"
  end

  @@dispatcher = {
  ?1 => instance_method(:do_1),
  ?2 => instance_method(:do_2),
  ?3 => instance_method(:do_3),
  ?4 => instance_method(:do_4)
  }

  def interpret(str)
    str.each_char{ |i| @@dispatcher[i].bind(self).call }
  end
end

interpreter = CommandInterpreter.new
interpreter.interpret("1234")
