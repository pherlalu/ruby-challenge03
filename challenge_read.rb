require_relative 'ar.rb'


# Use the Product class to find (any) product from the database.
product = Product.first
puts "First product: #{product.inspect}"

# Total number of products
number_of_products = Product.count
puts "There are #{number_of_products} in the products table."

# The names of all products above $10 with names that begin with the letter C.
products_above_10 = Product.where('price > ? AND name LIKE ?', 10, 'C%')
puts "The names of all products above $10 with names that begin with the letter C:"
products_above_10.each { |product| puts product.name }

# Total number of products with a low stock quantity. (Low is defined as less than 5 in stock.)
low_stock_quantity_products = Product.where('stock_quantity < ?', 5).count
puts "Total number of products with a low stock_quantity quantity: #{low_stock_quantity_products}"


# Added part to the challenge_read.rb file:
# Find the name of the category associated with one of the products you have found.
product = Product.first
puts "First product: #{product.name}"
puts "Category of the first product: #{product.category.name}"

# Find a specific category and use it to build and persist a new product associated with this category.
category = Category.find_by(name: 'Beverages') 
new_product = category.products.build(name: 'Bud Light', price: 32, stock_quantity: 30) # Replace with actual column names and values
if new_product.save
  puts "New product '#{new_product.name}' has been created in the '#{category.name}' category."
else
  puts "Failed to create new product: #{new_product.errors.full_messages.join(", ")}"
end

# Find a specific category and then use it to locate all the the associated products over a certain price.
products_over_price = category.products.where('price > ?', 15) 
puts "Products in the '#{category.name}' category over $15:"
products_over_price.each { |product| puts product.name }