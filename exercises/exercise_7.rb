require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

puts "Let's create a store and insert into the psql database!"
print 'Enter a store name: '
store_name = gets.chomp

# store = Store.new
# store.name = store_name
# pp store.save!

store = Store.create(name: store_name)
puts store.valid?
puts store.validate
error_container = store.errors.full_messages
puts error_container
# puts store.validate!


# [ Validation Testing for Employee Instances ]

# Invalid because first_name, last_name are not present
# sasuke = @store2.employees.create(hourly_rate: 201)
# puts sasuke.valid?
# puts sasuke.validate
# sasuke.validate!

# Invalid because store_id is not present
# sakura = Employee.create(first_name: 'Sakura', last_name: "Haruno", hourly_rate: 65)
# puts sakura.valid?
# puts sakura.validate
# sakura.validate!

# Valid
# rock = Employee.create(store_id: 1, first_name: 'Rock', last_name: "Lee", hourly_rate: 150)
# puts rock.valid?
# puts rock.validate
# rock.validate!

# [ Validation Testing for Store Instances ]

# Invalid because name is too short, annual_revenue is not a number since nothing was passed for it
# toys_r_us = Store.create(name: 'HI')
# puts toys_r_us.valid?
# puts toys_r_us.validate
# toys_r_us.validate!

# Invalid because annual_revenue is not greater than or equal to 0
# jj_bean = Store.create(name: 'JJ Bean', annual_revenue: -1)
# puts jj_bean.valid?
# puts jj_bean.validate
# puts jj_bean.validate!

# Valid
# walmart = Store.create(name: 'Walmart', annual_revenue: 742000000)
# puts walmart.valid?
# puts walmart.validate
# puts walmart.validate!

# Invalid because past_time does not carry apparel of at least one gender
# past_time = Store.create(name: 'Past Time', annual_revenue: 1, mens_apparel: false, womens_apparel: false)
# puts past_time.valid?
# puts past_time.validate
# puts past_time.validate!