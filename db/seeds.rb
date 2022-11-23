# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

file = URI.open('app/assets/images/BobCuttingGrass.jpeg')
user1 = User.new do |u|
  u.email = "sebastian.hahne@jamable.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Sonntagstraße 1, Berlin, Berlin, Deutschland"
  u.photo.attach(io: file, filename: 'BobCuttingGrass.jpeg', content_type: 'image/jpeg')
end

user1.save
file1 = URI.open('app/assets/images/logo.png')
lawnmower1 = Lawnmower.new do |u|
  u.title = 'Stormbreaker'
  u.price = 200
  u.description = 'Finely shaves grass with her sharpened battleaxe'
  u.speed = 5
  u.photos.attach(io: file1, filename: 'logo.png', content_type: 'image/png')
end

lawnmower1.user = user1
lawnmower1.save

# lawnmower2 = Lawnmower.new do |u|
#   u.title = 'Bailey'
#   u.price = 1000
#   u.description = 'Borks all the grass away'
#   u.speed = 5
#   u.photos.attach(io: file, filename: 'BobCuttingGrass.jpeg', content_type: 'image/jpeg')
# end

# lawnmower2.user = user1
# lawnmower2.save


# Lawnmower.create!(user_id: 1, title: "rocket", price: 200, description: "fastest lawnmower in the universe", speed: 5)
# Lawnmower.create(user_id: 1, title: "bob", price: 50, description: "good average", speed: 3)
# Lawnmower.create(user_id: 1, title: "sea turtle", price: 200, description: "very slow but reliable", speed: 1)
# Lawnmower.create(user_id: 1, title: "goaty", price: 200, description: "fast but messy", speed: 5)
# Lawnmower.create(user_id: 1, title: "monster LM", price: 150, description: "biggest vehicle for your garden", speed: 4)
