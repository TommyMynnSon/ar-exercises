require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...

# Load the third store
@store3 = Store.find_by(id: 3)

# Delete @store3 from database using Active Record's destroy method
@store3.destroy

# Verify deletion by outputting number of store instances in stores table
puts Store.count