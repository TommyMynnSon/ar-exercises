require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...

# Return the first store (with id = 1) from the database
@store1 = Store.first

# Return the second store from the database
@store2 = Store.find_by(id: 2)

# Update @store1 database instance by changing its name
@store1.update(name: 'Kingsway')