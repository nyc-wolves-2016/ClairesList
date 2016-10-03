# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  user = User.create!( username: Faker::Superhero.name, email: Faker::Internet.email, password: "password", phone: [Faker::PhoneNumber.phone_number, nil].sample)
end

10.times do
  category = Category.create!( name: Faker::Commerce.department)
end

40.times do
  article = Article.create!( title: Faker::Commerce.product_name, description: Faker::Lorem.paragraph(3), price: Faker::Commerce.price, user_id: rand(1..20), category_id: rand(1..10))
end
