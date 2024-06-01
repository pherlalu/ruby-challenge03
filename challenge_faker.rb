# Name: Steffi Ann Tanya Amper
# Created: 2023-06-01
# Course: WEBD-3011 (255576) Agile Full Stack Web Development
# Description: U3 - Active Record

require 'faker'

10.times do |i|
  category = Category.create(name: Faker::Coffee.blend_name)

  10.times do |j|
    product = Product.create(
      name: "#{Faker::Coffee.variety}-#{i}-#{j}",
      description: Faker::Lorem.sentence,
      price: Faker::Commerce.price,
      stock_quantity: Faker::Number.between(1, 10),
      category_id: category.id
    )
  end
end


