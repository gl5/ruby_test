require 'sequel'
require 'sqlite3'

DB = Sequel.sqlite # memory database
p "DB.class => #{DB.class}"

DB.create_table :items do
  primary_key :id
  String :name
  Float :price
end

items = DB[:items] # Create a dataset
p "items.class => #{items.class}"

# Populate the table
items.insert(:name => 'abc', :price => rand * 100)
items.insert(:name => 'def', :price => rand * 100)
items.insert(:name => 'ghi', :price => rand * 100)
items.insert(:name => 'abc', :price => rand * 100)
items.insert(:name => 'def', :price => rand * 100)
items.insert(:name => 'ghi', :price => rand * 100)

# Print out the number of records
#puts "Item count: #{items.count}"

# Print out the average price
#puts "The average price is: #{items.avg(:price)}"

item = items.first
p "item.class => #{item.class}"
