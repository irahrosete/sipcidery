# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# brewers = ["The Apple Thief", "Hillbilly Cider", "Colonial Brewing Co.", "Bilpin Cider Co.", "Pomologist Cider", "Australian Brewery", "Sydney Brewery", "Darkes Cider", "Wild One", "Willie Smith's"]
brewers = ["The Apple Thief"]

# if Brewer.count == 0
  brewers.each do |brewer|
    Brewer.create(name: brewer)
    puts "created #{brewer}"
  end
# end

# if User.count == 0
#   User.create(email: "irah@email.com", password: "123qwe")
# end