# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p "Seeding..."

15.times do
  Inventory.create(name: Faker::Book.title, amount: rand(1..100), details: Faker::Books::Dune.quote, supplier: Faker::Books::Dune.planet, price: rand(1000..10000))
end
