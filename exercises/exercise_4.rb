require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

# Note:
# Using manual save instantation of object style (e.g., not using Store.create(name: "Burnaby", ...))

# Surrey Store
store_surrey = Store.new
store_surrey.name = "Surrey"
store_surrey.annual_revenue = 224000
store_surrey.mens_apparel = false
store_surrey.womens_apparel = true
store_surrey.save

# Whistler Store
store_whistler = Store.new
store_whistler.name = "Whistler"
store_whistler.annual_revenue = 1900000
store_whistler.mens_apparel = true
store_whistler.womens_apparel = false
store_whistler.save

# Yaletown Store
store_yaletown = Store.new
store_yaletown.name = "Yaletown"
store_yaletown.annual_revenue = 430000
store_yaletown.mens_apparel = true
store_yaletown.womens_apparel = true
store_yaletown.save

# Fetch stores that carry men's apparel using the where method
@mens_stores = Store.where(mens_apparel: true)

# Loop through @mens_stores and output their name and annual revenue
@mens_stores.each do |store|
  puts "Store: #{store.name} --- Annual Revenue: $#{store.annual_revenue}"
end

# Fetch stores that carry women's apparel and are generating less than $1M in annual revenue
@womens_stores_sub_one_million = Store.where(womens_apparel: true).where('annual_revenue < ?', 1000000)

# Loop through @womens_stores_sub_one_million and output their name and annual revenue
@womens_stores_sub_one_million.each { |store| puts "Store: #{store.name} --- Annual Revenue: $#{store.annual_revenue}" }