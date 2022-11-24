# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

# destroying everything
puts 'Burning down old database...'
puts 'Killing all the users...'
User.destroy_all
puts 'Replacing all the Mawnlowers...'
Lawnmower.destroy_all
puts 'Scamming all the customers...'
Booking.destroy_all
puts 'Reviewing the reviews..'
Review.destroy_all

# user photo files

sebi = URI.open('app/assets/images/sebi.png')
stormbreaker = URI.open('app/assets/images/stormbreaker.png')
gabriel = URI.open('app/assets/images/gabriel.png')
# lawnmower photos

bob = URI.open('app/assets/images/BobCuttingGrass.jpeg')
doggo = URI.open('app/assets/images/doggo.jpg')
child = URI.open('app/assets/images/child.jpeg')
turtle = URI.open('app/assets/images/turtle.jpeg')
michael = URI.open('app/assets/images/michael.jpeg')
goat = URI.open('app/assets/images/goat.jpeg')
bunnies = URI.open('app/assets/images/bunnies.jpeg')
john = URI.open('app/assets/images/john.jpeg')

# Review photos

rolling_bob = URI.open('app/assets/images/rolling_bob.jpeg')

# creating users
user1 = User.new do |u|
  u.name = "Sebi"
  u.email = "sebi@jamable.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Sonntagstraße 1, Berlin, Berlin, Deutschland"
  u.photo.attach(io: sebi, filename: 'sebi.png', content_type: 'image/png')
end
user1.save

user2 = User.new do |u|
  u.name = "Alicia Stromberg"
  u.email = "stormbreaker@gmail.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Luleå, Sweden (or russia..we areant sure)"
  u.photo.attach(io: stormbreaker, filename: 'stormbreaker.png', content_type: 'image/png')
end
user2.save

user3 = User.new do |u|
  u.name = "Vicente Gabriel Novella Corchado"
  u.email = "spanish@gmail.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.address = "Spain"
  u.photo.attach(io: gabriel, filename: 'gabriel.png', content_type: 'image/png')
end
user3.save

# user1's Lawnmowers
lawnmower1 = Lawnmower.new do |u|
  u.title = 'Bob SnipSnip'
  u.price = 200
  u.description = 'Finely shaves grass with his precision tools'
  u.speed = 3
  u.photo.attach(io: bob, filename: 'BobCuttingGrass.jpeg', content_type: 'image/jpeg')
end
lawnmower1.user = user1
lawnmower1.save

lawnmower2 = Lawnmower.new do |u|
  u.title = 'Bailey'
  u.price = 1000
  u.description = 'Borks all the grass away'
  u.speed = 2
  u.photo.attach(io: doggo, filename: 'doggo.jpg', content_type: 'image/jpg')
end
lawnmower2.user = user3
lawnmower2.save

lawnmower3 = Lawnmower.new do |u|
  u.title = 'Morgan'
  u.price = 80
  u.description = 'He may not be very fast, but I dare you to try and tell him he is doing a bad job!'
  u.speed = 2
  u.photo.attach(io: child, filename: 'child.jpeg', content_type: 'image/jpeg')
end
lawnmower3.user = user1
lawnmower3.save

lawnmower4 = Lawnmower.new do |u|
  u.title = 'Snappy'
  u.price = 50
  u.description = 'I like turtles'
  u.speed = 1
  u.photo.attach(io: turtle, filename: 'turtle.jpeg', content_type: 'image/jpeg')
end
lawnmower4.user = user2
lawnmower4.save

lawnmower5 = Lawnmower.new do |u|
  u.title = 'Michael Myers'
  u.price = 80
  u.description = 'After a midlife crisis michael decided he no longer wanted to kill people. He instead decided to follow his true passion...Gardening'
  u.speed = 5
  u.photo.attach(io: michael, filename: 'michael.jpeg', content_type: 'image/jpeg')
end
lawnmower5.user = user3
lawnmower5.save

lawnmower6 = Lawnmower.new do |u|
  u.title = 'Bunch of Bunnies'
  u.price = 9999
  u.description = 'Fluffy, vicious animal. Make sure you have some carrots.'
  u.speed = 3
  u.photo.attach(io: bunnies, filename: 'bunnies.jpeg', content_type: 'image/jpeg')
end
lawnmower6.user = user3
lawnmower6.save

lawnmower7 = Lawnmower.new do |u|
  u.title = 'Goaty McGoatFace'
  u.price = 4
  u.description = 'Why not'
  u.speed = 2
  u.photo.attach(io: goat, filename: 'goat.jpeg', content_type: 'image/jpeg')
end
lawnmower7.user = user1
lawnmower7.save

lawnmower8 = Lawnmower.new do |u|
  u.title = 'John'
  u.price = 5
  u.description = 'John loves mawnlowing so much, that he changed his name to feel closer to his John Deere 1600 Series Turbo III Wide-Area Mower,'
  u.speed = 5
  u.photo.attach(io: john, filename: 'john.jpeg', content_type: 'image/jpeg')
end
lawnmower8.user = user2
lawnmower8.save

# creating reviews
# reviews for bob
review1 = Review.new do |u|
  u.comment = 'Not so much cutting done, but I liked his enthusiasm'
  u.rating = 4
  u.photo.attach(io: rolling_bob, filename: 'rolling_bob.jpeg', content_type: 'image/jpeg')
end
review1.lawnmower = lawnmower1
review1.user = user2
review1.save

review2 = Review.new do |u|
  u.comment = 'You are fantastic Bob. You lightened up my day and brightened up my garden. May god be with you!<3'
  u.rating = 5
end
review2.lawnmower = lawnmower3
review2.user = user3
review2.save

review3 = Review.new do |u|
  u.comment = 'You suck morgan. Way too slow at cutting grass and not even that cute!'
  u.rating = 1
end
review3.lawnmower = lawnmower3
review3.user = user3
review3.save

review4 = Review.new do |u|
  u.comment = 'Not the fastest worker. He did have some amazing stories though! Maybe he should start a podcast instead!'
  u.rating = 1
end
review4.lawnmower = lawnmower3
review4.user = user2
review4.save

puts "done"
