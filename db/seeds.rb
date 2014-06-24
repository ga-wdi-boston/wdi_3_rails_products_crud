Product.delete_all

product_count = 20
puts "Creating #{product_count} products"

product_count.times do
  Product.create!(name: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(1), price: (rand(100).to_f + (rand(100).to_f/100)) )
end
