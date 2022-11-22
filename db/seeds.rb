# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Lawnmower.create!(user_id: 1, title: "rocket", price: 200, description: "fastest lawnmower in the universe", speed: 5)
Lawnmower.create(user_id: 1, title: "bob", price: 50, description: "good average", speed: 3)
Lawnmower.create(user_id: 1, title: "sea turtle", price: 200, description: "very slow but reliable", speed: 1)
Lawnmower.create(user_id: 1, title: "goaty", price: 200, description: "fast but messy", speed: 5)
Lawnmower.create(user_id: 1, title: "monster LM", price: 150, description: "biggest vehicle for your garden", speed: 4)
