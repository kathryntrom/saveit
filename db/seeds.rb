# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.delete_all
Item.create!(name: "Metal Straw", value: 1.0)
Item.create!(name: "Plastic Straw", value: -1.0)
Item.create!(name: "Reusable Grocery Store Bag", value: 2.0)
Item.create!(name: "Plastic Shopping Bag", value: 1.0)
Item.create!(name: "Reusable Water Bottle", value: 1.0)
Item.create!(name: "Pastic Water Bottle", value: 1.0)
Item.create!(name: "Gallon of Gas", value: 1.0)