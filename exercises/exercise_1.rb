require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

# Note:
# Using save-less instantation of object style (e.g., not using Store.create(name: "Burnaby", ...))

# Burnaby Store
store_burnaby = Store.new
store_burnaby.name = "Burnaby"
store_burnaby.annual_revenue = 300000
store_burnaby.mens_apparel = true
store_burnaby.womens_apparel = true
store_burnaby.save

# Richmond Store
store_richmond = Store.new
store_richmond.name = "Richmond"
store_richmond.annual_revenue = 1260000
store_richmond.mens_apparel = false
store_richmond.womens_apparel = true
store_richmond.save

# Gastown Store
store_gastown = Store.new
store_gastown.name = "Gastown"
store_gastown.annual_revenue = 190000
store_gastown.mens_apparel = true
store_gastown.womens_apparel = false
store_gastown.save

# Output number of Store tuples
puts Store.count
