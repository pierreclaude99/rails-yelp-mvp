# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
burglar = { name: "Burglar", address: "7 rue du chat noir, 75120 Paris", phone_number: "01 45 78 15", category: "french" }
chen = { name: "Chez chen", address: "18 rue du chien mauve, 75019 Paris", phone_number: "01 77 78 92", category: "chinese" }
unefois = { name: "Une fois", address: "29 rue de la girafe rouge, 75018 Paris", phone_number: "01 77 78 92", category: "belgian" }
arrivedechi = { name: "arrivedechi", address: "31 rue de du mouton noir, 75017 Paris", phone_number: "01 45 75 92", category: "italian" }
yoko = { name: "Yokolele", address: "42 rue du flan, 75016 Paris", phone_number: "01 99 75 55", category: "japanese" }


[ burglar, chen, unefois, arrivedechi, yoko ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
