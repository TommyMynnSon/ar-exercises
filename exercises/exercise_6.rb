require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

# Tell Active Record that stores table and employees table are related via store_id column of employees table
# 1. Add 'has_many :employees' inside the Store model (class)
# 2. Add 'belongs_to :store' inside the Employee model (class)

# Add some data into employees

# Kingsway store (id 1)
@store1.employees.create(first_name: 'Khurram', last_name: 'Virani', hourly_rate: 60)
@store1.employees.create(first_name: 'Albert', last_name: 'Anders', hourly_rate: 50)
@store1.employees.create(first_name: 'Bob', last_name: 'Brick', hourly_rate: 40)
@store1.employees.create(first_name: 'Chris', last_name: 'Chaunders', hourly_rate: 30)
@store1.employees.create(first_name: 'Daryl', last_name: 'Democ', hourly_rate: 20)
@store1.employees.create(:first_name => 'Deprecated', :last_name => 'D\'Hash', :hourly_rate => 15.2)

# Richmond store (id 2)
@store2.employees.create(first_name: 'Richie', last_name: 'Ronde', hourly_rate: 60)
@store2.employees.create(first_name: 'Sandy', last_name: 'Shivers', hourly_rate: 50)
@store2.employees.create(first_name: 'Tommy', last_name: 'Tucker', hourly_rate: 40.55)
