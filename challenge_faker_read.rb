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
