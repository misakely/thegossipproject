# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

<<<<<<< HEAD

15.times do |city|
	cities = City.create!(name: Faker::GameOfThrones.city)
end

15.times do |index|
=======
10.times do |city|
	cities = City.create!(name: Faker::GameOfThrones.city)
end

10.times do |index|
>>>>>>> d124a908e1f8703a3a9ddbbfda383882b454e461
	users = User.create!(first_name: Faker::Superhero.name, last_name: Faker::TwinPeaks.character, description: Faker::TwinPeaks.quote, email: Faker::Internet.email, city_id: Faker::Number.between(1,10), age: Faker::Number.between(18,90))
  tags = Tag.create!(title: Faker::HarryPotter.book)
end

20.times do |index|
  gossips = Gossip.create!(content: Faker::TwinPeaks.quote, title: Faker::Dessert.topping, user_id: Faker::Number.between(1,10))
<<<<<<< HEAD
end 


private_message = PrivateMessage.create!(content: Faker::Hobbit.quote,sender_id: 1)
i = 1
while i < 5
private_message.recipients << User.find(i)
i = i + 1
end 

i = 1
while i < 11
Gossip.find(i).tags <<  Tag.find(i)
Gossip.find(i).tags <<  Tag.find(i+1)
i = i+1
=======
end 

1.times do |index|
  private_messages = PrivateMessage.create!(content: Faker::Hobbit.quote,sender_id: 1)
  private_messages.recipients << User.find(5)
  private_messages.recipients << User.find(8)
>>>>>>> d124a908e1f8703a3a9ddbbfda383882b454e461
end 