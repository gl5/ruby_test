require 'sinatra'

outer_self = self

get "/" do
  "outer_self: #{outer_self} \n" <<
  "outer_self_class: #{outer_self.class} \n" <<
  "inner_self: #{self} \n" <<
  "inner_self_class: #{self.class} \n"
end
