# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Plant 1
plant1 = Plant.create!(
    name: 'Perlwort Colobanthus Quitensis',
    breed: '',
    description: 'This plant grows in Antartica! Crazy, right?!',
    price: 12.99,
    stock: 6
)

# Plant 1 Ad
Ad.create!(
    title: 'Cool Flowers Ready for Winter!?',
    plant: plant1
)

# Plant 2
plant2 = Plant.create!(
    name: 'Marguerite Daisy',
    breed: '',
    description: 'Marguerite daisy flowers are a small shrub-like perennial in the family Asteraceae, which are native to the Canary Islands. This little herbaceous perennial is a nice addition to flower beds, borders or as a container specimen.',
    price: 4.99,
    stock: 20
)

# Plant 2 Ad
Ad.create!(
    title: 'Buy These Flowers!!',
    plant: plant2
)

# Plant 3
plant3 = Plant.create!(
    name: 'Hibiscus',
    breed: '',
    description: 'Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. The genus is quite large, comprising several hundred species that are native to warm temperate, subtropical and tropical regions throughout the world.',
    price: 15.99,
    stock: 3
)

# Plant 3 Ad
Ad.create!(
    title: 'Flowers Brighter than the Sun!',
    plant: plant3
)

Ad.create!(
    title: 'Just Buy This!',
    plant: plant3
)