require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Output total revenue for all stores using
puts "Aggregate Revenue: $#{Store.sum(:annual_revenue)}"

# Output average annual revenue for all stores
puts "Average Revenue: $#{Store.sum(:annual_revenue) / Store.count}"

# Output number of stores that are generating $1M or more in annual sales
puts "Number of stores w/ $1M or more in annual revenue: #{Store.where('annual_revenue >= 1000000').size}"