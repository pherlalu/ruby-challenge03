# Name: Steffi Ann Tanya Amper
# Created: 2023-06-01
# Course: WEBD-3011 (255576) Agile Full Stack Web Development
# Description: U3 - Active Record

load 'ar.rb'

# Find all products with a stock_quantity quantity greater than 40.
products = Product.where('stock_quantity > ?', 40)

# Add one to the stock_quantity of each of these products and then save these changes to the database.
products.each do |product|
  product.stock_quantity += 1
  product.save
end