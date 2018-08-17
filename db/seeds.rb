require 'faker'


3.times do
  User.create(
    full_name: Faker::Name.name,
    email: Faker::Internet.email
  )
end
