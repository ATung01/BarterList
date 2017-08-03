# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)









users = []
10.times do |i|
  users << User.create(name: Faker::RickAndMorty.character, location: Faker::RickAndMorty.location, email: "#{Faker::HeyArnold}@gmail.com" )
end

items = []
10.times do |i|
  items << Item.create(name: Faker::Pokemon.name, description: Faker::RickAndMorty.quote, user_id: users[i].id)
end

trans = []

10.times do |i|
  trans << Transaction.create(date: Time.now, transactionrating: i, user_id:users[i].id, item_id:items[i].id)
end
