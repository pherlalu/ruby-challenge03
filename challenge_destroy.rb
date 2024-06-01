# Name: Steffi Ann Tanya Amper
# Created: 2023-06-01
# Course: WEBD-3011 (255576) Agile Full Stack Web Development
# Description: U3 - Active Record

load 'ar.rb'

# Find one of the products you created in challenge_create.rb.
product = Product.find_by(name: 'Product 3')

if product
  # Delete it from the database.
  product.destroy
  puts "Product '#{product.name}' has been deleted."
else
  puts "Product not found."
end
