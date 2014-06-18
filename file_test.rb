#!/usr/bin/env ruby
# encoding:utf-8

class C
  @@var = 1
  class << self
    def get_var
      p @@var
    end

    def write_var(value)
      @@var = value
    end

    def look
      if __FILE__ == $0
        get_var
      else
        p "not the main file"
      end
    end
  end
end

C.look
