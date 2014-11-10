category1 = Category.create(name: 'Catering Menu')
category2 = Category.create(name: 'Sandwiches')
category3 = Category.create(name: 'Beverages')

category4 = Category.create(name: 'Small bagel box', category_id:1)
category5 = Category.create(name: 'Large bagel box', category_id:1)
category6 = Category.create(name: 'Party box', category_id:1)
category7 = Category.create(name: 'Fountain Soda', category_id:3)

products = Product.create(
  [{name: 'The Somerville', description: 'whole wheat bagel with', price:6.75, category_id:2},
  {name: 'Plain Bagels', description: '12 bagels', price:12.00, category_id:4},
  {name: 'The Brookline', description: 'poppyseed bagel with', price:7.50, category_id:2},
  {name: 'Small', description: ' ', price:2.75, category_id:7}]
  )


options = Option.create(
  [{name: 'Plain cream cheese', price:1.50},
  {name: 'Tofutti', price:2.00}
  ]
  )



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
