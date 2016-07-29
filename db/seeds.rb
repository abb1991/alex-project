10.times do |num|
  name = "User #{num}"
  user = User.create(username: Faker::Name.name, password: "test")
end


