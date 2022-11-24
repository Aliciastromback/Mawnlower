# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

# user photo files

file1 = URI.open('app/assets/images/logo.png')
file2 = URI.open('app/assets/images/sebi.png')
file3 = URI.open('app/assets/images/doggo.jpg')
file4 = URI.open('app/assets/images/stormbreaker.png')

# lawnmower photos

file = URI.open('app/assets/images/BobCuttingGrass.jpeg')

user1 = User.new do |u|
  u.name = "NotAFly"
  u.email = "sebastian.hahne@jamable.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Sonntagstraße 1, Berlin, Berlin, Deutschland"
  u.photo.attach(io: file2, filename: 'logo.png', content_type: 'image/png')
end
user1.save

user2 = User.new do |u|
  u.name = "Sebi"
  u.email = "sarjsmithde@gmail.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Sonntagstraße 1, Berlin, Berlin, Deutschland"
  u.photo.attach(io: file1, filename: 'sebi.png', content_type: 'image/png')
end
user2.save

user3 = User.new do |u|
  u.name = "Stormbreaker"
  u.email = "stormbreaker@hotmail.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Sonntagstraße 1, Berlin, Berlin, Deutschland"
  u.photo.attach(io: file4, filename: 'stormbreaker.png', content_type: 'image/png')
end
user3.save


lawnmower1 = Lawnmower.new do |u|
  u.title = 'Stormbreaker'
  u.price = 200
  u.description = 'Finely shaves grass with her sharpened battleaxe'
  u.speed = 5
  u.photo.attach(io: file, filename: 'BobCuttingGrass.jpeg', content_type: 'image/jpeg')
end
lawnmower1.user = user1
lawnmower1.save

lawnmower2 = Lawnmower.new do |u|
  u.title = 'Bailey'
  u.price = 1000
  u.description = 'Borks all the grass away'
  u.speed = 5
  u.photo.attach(io: file3, filename: 'doggo.jpg', content_type: 'image/jpg')
end
lawnmower2.user = user1
lawnmower2.save

puts "done"
