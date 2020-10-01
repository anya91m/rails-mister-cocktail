# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "lemon")

puts "Cleaning cocktails..."
Cocktail.destroy_all

puts "Creating cocktails..."


mango_mule = {name: "Mango Mule"}

citrus_fizz = {name: "Citrus Fizz"}

le_Wagon = {name: "Le Wagon on the Beach"}



[mango_mule,
citrus_fizz,
le_Wagon].each do |attributes|
  cocktail = Cocktail.create(attributes)
  puts "Created #{cocktail.name}"
end

puts "Finished!"
