# Name: Steffi Ann Tanya Amper
# Created: 2023-06-01
# Course: WEBD-3011 (255576) Agile Full Stack Web Development
# Description: U3 - Active Record

load 'ar.rb'
require 'pp'

pp Category.all

Category.all.each do |category|
  puts "Category: #{category.name}"
  category.products.each_with_index do |product, i|
    puts "Product #{i + 1}: #{product.name}"
    puts "Description: #{product.description}"
    puts "Stock Quantity: #{product.stock_quantity}"
    puts "Price: #{product.price}"
    puts "----------------------"
  end
end
