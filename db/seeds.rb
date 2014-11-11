# Sandwiches

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

build_your_own = Product.create(
  name: 'Build Your Own Bagel - Plain',
  description: 'plain bagel',
  price: 2.50,
  category: Category.find_or_initialize_by(name: 'Sandwiches'),
  options: [
    Option.find_or_initialize_by(name: 'tomato', price: 0),
    Option.find_or_initialize_by(name: 'cucumber', price: 0),
    Option.find_or_initialize_by(name: 'red onions', price: 0),
    Option.find_or_initialize_by(name: 'cole slaw', price: 0),
    Option.find_or_initialize_by(name: 'mayo', price: 0.50),
    Option.find_or_initialize_by(name: 'garlic mayo', price: 0.50),
    Option.find_or_initialize_by(name: 'mustard', price: 0.50),
    Option.find_or_initialize_by(name: 'spicy mustard', price: 0.50),
    Option.find_or_initialize_by(name: 'cream cheese', price: 1.50),
    Option.find_or_initialize_by(name: 'tofutti', price: 2),
    Option.find_or_initialize_by(name: 'salmon spread', price: 2.5),
    Option.find_or_initialize_by(name: 'cheese', price: 0.5),
    Option.find_or_initialize_by(name: 'avocado', price: 2.0),
    Option.find_or_initialize_by(name: 'sprouts', price: 0.5),
    Option.find_or_initialize_by(name: 'turkey', price: 2),
    Option.find_or_initialize_by(name: 'smoked salmon', price: 3.5),
    Option.find_or_initialize_by(name: 'roast beef', price: 2),
    Option.find_or_initialize_by(name: 'corn beef', price: 3)
  ]
)

# Catering

small_bagel_box = Product.create(
  name: 'Small Bagel Box',
  description: '12 bagels',
  price: 6.00,
  category: Category.find_or_initialize_by(name: 'Catering'),
  options: [
    Option.find_or_initialize_by(name: '12 plain bagels', price: 12),
    Option.find_or_initialize_by(name: '12 sesame seed bagels', price: 15),
    Option.find_or_initialize_by(name: '12 poppy seed bagels', price: 15),
    Option.find_or_initialize_by(name: '12 onion bagels', price: 15),
    Option.find_or_initialize_by(name: '12 whole wheat bagels', price: 15),
    Option.find_or_initialize_by(name: '12 cinnamon raisin bagels', price: 15),
    Option.find_or_initialize_by(name: '12 mixed variety bagels (2 of each)', price: 15)
  ]
)

large_bagel_box = Product.create(
  name: 'Cream Cheese',
  description: 'catering size cream cheese',
  price: 4.00,
  category: Category.find_or_initialize_by(name: 'Catering'),
  options: [
    Option.find_or_initialize_by(name: 'plain', price: 0),
    Option.find_or_initialize_by(name: 'chive', price: 0.5),
    Option.find_or_initialize_by(name: 'tofutti (vegetarian)', price: 0.5),
    Option.find_or_initialize_by(name: 'salmon spread', price: 1.5)
  ]
)

# Beverages

soda = Product.create(
  name: 'Fountain Soda',
  price: 2.75,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small soda', price: 0),
    Option.find_or_initialize_by(name: 'large soda', price: 0.75)
  ]
)

coffee = Product.create(
  name: 'Coffee',
  price: 2.0,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small coffee', price: 0),
    Option.find_or_initialize_by(name: 'large coffee', price: 0.25)
  ]
)

latte = Product.create(
  name: 'Latte',
  price: 3.50,
  category: Category.find_or_initialize_by(name: 'Beverages'),
  options: [
    Option.find_or_initialize_by(name: 'small latte', price: 0),
    Option.find_or_initialize_by(name: 'large latte', price: 1.25)
  ]
)


