category1 = Category.create(name: 'Catering Menu')
category2 = Category.create(name: 'Sandwiches')
category3 = Category.create(name: 'Beverages')


products = Product.create([{name: 'The Somerville', price:6.75, category_id:2},
{name: 'Small Bagel Box', price:12.00, category_id:1},
{name: 'The Brookline', price:7.50, category_id:2}, ])



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
