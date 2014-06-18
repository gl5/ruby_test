# encoding: utf-8

require 'csv'

data = ['1', '2', '"3,4"']

CSV.open("test.csv", "wb") do |csv|
    csv << data
end
