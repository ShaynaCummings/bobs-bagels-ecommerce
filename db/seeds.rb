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
