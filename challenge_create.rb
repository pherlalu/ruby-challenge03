# Name: Steffi Ann Tanya Amper
# Created: 2023-06-01
# Course: WEBD-3011 (255576) Agile Full Stack Web Development
# Description: U3 - Active Record

load 'ar.rb'

# Create three new products using the three different ways to create new AR objects.

# Assume we have a category
category = Category.first

# Method One: Create a Product in "object space".
product1 = Product.new
product1.name = 'Product 1'
product1.description = 'Added Product 1'
product1.price = 10
product1.stock_quantity = 100
product1.category = category
product1.save

# Method Two: Create a Product in "object space"
product2 = Product.new(name: 'Product 2',  description: 'added product 2', price: 20, stock_quantity: 200, category: category)
product2.save

# Method Three: Create the object and persist it all at once.
product3 = Product.create(name: 'Product 3', description: 'added product 3', price: 30, stock_quantity: 300, category: category)

# Create a Product object that is missing some required columns.
invalid_product = Product.new(price: 40, stock_quantity: 400, category: category)

# Save will return false if any of our validations fail.
if (invalid_product.save)
  puts "The product was saved to the database products table."
  puts invalid_product.inspect
else
  puts "There was an error saving the product to the database."
  
  # We can loop through all the validation errors.
  invalid_product.errors.messages.each do |column, errors|
    errors.each do |error|
      puts "The #{column} property #{error}."
    end
  end
end