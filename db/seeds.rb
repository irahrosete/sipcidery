# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# cideries = ["The Apple Thief", "Hillbilly Cider", "Colonial Brewing Co.", "Bilpin Cider Co.", "Pomologist Cider", "Australian Brewery", "Sydney Brewery", "Darkes Cider", "Wild One", "Willie Smith's"]
# cideries = [
#   {id: 0, name: 'NO CIDERY', description: 'dummy cidery', email: 'nocidery@email.com'}
# ]

# if Cidery.count == 0
#   cideries.each do |cidery|
#     Cidery.create(cidery)
#     puts 'created default cidery'
#   end
# end

users = [
  {first_name: 'admin', last_name: 'x', email: 'sipcidery@gmail.com', password: '123qwe', role: 'super'},
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

styles = [
  ['New World', 'Made primarily from culinary or table fruit. Generally lower in tannin and higher in acidity. Clean, clear, fresh, fruity.'],
  ['Traditional', 'Fuller-bodied in the mouth, showing more savoury, fermentation-derived flavours, and more textural, grippy characters on the tongue. Show some tannin derived from the apples used.']
]

if Style.count == 0
  styles.each do |name, description|
    Style.create(name: name, description: description)
  end
  puts 'created styles'
end

sugar_contents = [
  ['Sweet', 'Obvious, round, even luscious sweetness on the tongue. (> 40g/L of sugar)'],
  ['Medium-sweet', 'Pronounced but balanced sweetness (25–40g/L of sugar).'],
  ['Medium', 'Noticeable sweetness but, depending on how high the balancing acidity is, can still taste quite dry. (9–25g/L of sugar)'],
  ['Dry', 'No residual sweetness, or just a hint of sweetness. (<9g/L of sugar)']
]

if SugarContent.count == 0
  sugar_contents.each do |name, description|
    SugarContent.create(name: name, description: description)
  end
  puts 'created sugar_contents'
end

prod_methods = [
  ['Method Traditional', 'Cider that goes through secondary fermentation in the bottle and is then disgorged. Can be made in both new world and traditional fashion.'],
  ['Cloudy', 'Cloudy cider is not clarified or filtered before being put into a keg, can or bottle. It often has a little more body and flavour than other new world crystal-clear, filtered cider.'],
  ['Scrumpy', 'Scrumpy is used to describe ‘rustic’ apple cider that is often wild-fermented, unfiltered and cloudy, usually dry, higher in alcohol and full of sometimes-funky, barnyard flavours.'],
  ['Farmhouse', 'A term often used for Australian ciders made in the tradition of keeved French cidre or English oak-matured West Country cider: deep golden in colour and full of complex flavours from bittersweet and bittersharp apples.'],
  ['Apple & Pear', 'The tart acidity in the apples is balanced by the soft sweetness of the pears.'],
  ['Fruit-Flavoured', 'Made by blending apple or pear cider with the juice of other fruits. Traditional choices include cherries and quince, but new world ciders are blended with exotic ingredients such as pineapple and ginger.'],
  ['Cyser', 'Cider blended with mead, a traditional drink made from fermented honey.'],
  ['Organic', 'Cider produced from apples or pears that have been grown in a certified‑organic  rchard, farmed sustainably without the use of synthetic chemicals.'],
  ['Oaked', 'Cider that is matured – and sometimes fermented – in oak barrels before bottling.  This process adds savoury flavours of toasty wood and sweet vanilla to the finished drink.'],
  ['Hopped', 'Made by adding hops to cider. The hops contribute aromatics and a touch of bitterness often lacking in cider made from eating apples.'],
  ['Ice', 'Golden, intensely sweet and tangy cider made from frozen apple or pear juice. The freezing process concentrates the sugar and acidity.'],
  ['Eau de Vie', 'Made by distilling apple or pear cider and bottling the clear spirit straight away.'],
  ['Apple Brandy', 'Made by distilling cider and then maturing it in oak barrels for at least two years before bottling to develop a distinctive golden colour and complex, spicy oaky flavours.'],
  ['Fortified', 'Made by adding spirit such as apple brandy to cider to increase the alcohol content. Includes
    pommeau, which is sweet cider and/or apple juice blended with apple brandy and matured in oak barrels.']
]

if ProdMethod.count == 0
  prod_methods.each do |name, description|
    ProdMethod.create(name: name, description: description)
  end
  puts 'created prod_methods'
end