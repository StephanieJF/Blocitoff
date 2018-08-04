require 'faker'

# Create Users
5.times do
  User.create!(
      email: Faker::Internet.email,
      password: Faker::Internet.password
  )
end

# Testing
  stephanie = User.create!(
      email: 'sjfischler@gmail.com',
      password: 'helloworld'
)
users = User.all

# Create To-Do Items
10.times do
  Item.create!(
      user: users.sample,
      name: Faker::Lorem.sentence
  )
end

# Testing Items
7.times do
  Item.create!(
      user: stephanie,
      name: Faker::Lorem.sentence
  )
end

puts "Seed finished"
puts "#{User.count} users created."
puts "#{Item.count} items created."