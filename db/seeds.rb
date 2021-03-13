# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cideries = ["The Apple Thief", "Hillbilly Cider", "Colonial Brewing Co.", "Bilpin Cider Co.", "Pomologist Cider", "Australian Brewery", "Sydney Brewery", "Darkes Cider", "Wild One", "Willie Smith's"]
cideries = [
  {name: 'NO CIDERY', description: 'dummy cidery', email: 'nocidery@email.com'}
]

if Cidery.count == 0
  cideries.each do |cidery|
    Cidery.create(cidery)
    puts 'created default cidery'
  end
end

users = [
  {first_name: 'i', last_name: 'x', email: 'sipcidery@gmail.com', password: '123qwe', role: 'super'},
  # {first_name: 'rep1', last_name: 'y', email: 'theapplethief1@gmail.com', password: '123qwe', role: 'rep'},
  # {first_name: 'rep2', last_name: 'y', email: 'theapplethief2@gmail.com', password: '123qwe', role: 'rep'},
  {first_name: 'norman', last_name: 'z', email: 'drinknorman@gmail.com', password: '123qwe'}
]

if User.count == 0
  users.each do |user|
    User.create(users)
  end
  puts 'created default users'
end