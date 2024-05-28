require 'faker'

10.times do |i|
  category = Category.create(name: Faker::Coffee.blend_name)

  10.times do |j|
    product = Product.create(
      name: "#{Faker::Coffee.variety}-#{i}-#{j}",
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price, # generates a float between 0 and 100
      stock_quantity: Faker::Number.between(1, 10), # generates an integer between 1 and 10
      category_id: category.id
    )
  end
end


