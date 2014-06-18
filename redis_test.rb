require 'rubygems'
require 'redis'

r = Redis.new

#r.delete('foo')

p "set foo to 'bar'"

r['foo'] = 'bar'

p "value of foo"

p r['foo']
