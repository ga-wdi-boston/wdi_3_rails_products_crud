Product.delete_all

puts "Creating 20 Products"
product_count = 20

product_count.times do |i|
  Product.create!(name: "Product #{i}", description: "Description #{i}",  price: (rand(100) + (rand(100)/100.to_f).round(2)))
end