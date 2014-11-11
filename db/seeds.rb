somerville = Product.create(
  name: 'The Somerville',
  description: 'whole weat bagel',
  price: 6.75,
  category: Category.find_or_initialize_by(name: 'Sandwiches'),
  options: [
    Option.find_or_initialize_by(name: 'avocado', price: 0),
    Option.find_or_initialize_by(name: 'tomato', price: 0),
    Option.find_or_initialize_by(name: 'cucumber', price: 0),
    Option.find_or_initialize_by(name: 'sprouts', price: 0),
    Option.find_or_initialize_by(name: 'tofutti cream cheese', price: 0)
  ]
)

north_end = Product.create(
  name: 'The North End',
  description: 'onion bagel',
  price: 6.75,
  category: Category.find_or_initialize_by(name: 'Sandwiches'),
  options: [
    Option.find_or_initialize_by(name: 'roast beef', price: 0),
    Option.find_or_initialize_by(name: 'tomato', price: 0),
    Option.find_or_initialize_by(name: 'red onions', price: 0),
    Option.find_or_initialize_by(name: 'asiago cheese', price: 0),
    Option.find_or_initialize_by(name: 'provolone cheese', price: 0)
  ]
)

south_end = Product.create(
  name: 'The South End',
  description: 'sesame bagel',
  price: 6.75,
  category: Category.find_or_initialize_by(name: 'Sandwiches'),
  options: [
    Option.find_or_initialize_by(name: 'corn beef', price: 0),
    Option.find_or_initialize_by(name: 'cole slaw', price: 0),
    Option.find_or_initialize_by(name: 'swiss cheese', price: 0),
    Option.find_or_initialize_by(name: 'spicy mustard', price: 0)
  ]
)

hub = Product.create(
  name: 'The Hub',
  description: 'plain bagel',
  price: 6.00,
  category: Category.find_or_initialize_by(name: 'Sandwiches'),
  options: [
    Option.find_or_initialize_by(name: 'cream cheese', price: 0),
    Option.find_or_initialize_by(name: 'tomato', price: 0),
    Option.find_or_initialize_by(name: 'red onions', price: 0),
    Option.find_or_initialize_by(name: 'smoked salmon', price: 0)
  ]
)

soda = Product.create(
  name: 'Fountain Soda',
  price: 0,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small soda', price: 2.75),
    Option.find_or_initialize_by(name: 'large soda', price: 3.50)
  ]
)

coffee = Product.create(
  name: 'Coffee',
  price: 0,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small coffee', price: 2.00),
    Option.find_or_initialize_by(name: 'large coffee', price: 2.50)
  ]
)

latte = Product.create(
  name: 'Latte',
  price: 0,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small latte', price: 3.50),
    Option.find_or_initialize_by(name: 'large latte', price: 4.25)
  ]
)


