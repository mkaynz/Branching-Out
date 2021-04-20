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
)

# Plant 1 Ad
Ad.create!(
    title: 'Cool Flowers Ready for Winter!?',
    price: 12.99,
    stock: 6,
    plant: plant1
)

# Plant 2
plant2 = Plant.create!(
    name: 'Marguerite Daisy',
    breed: '',
    description: 'Marguerite daisy flowers are a small shrub-like perennial in the family Asteraceae, which are native to the Canary Islands. This little herbaceous perennial is a nice addition to flower beds, borders or as a container specimen.',

)

# Plant 2 Ad
Ad.create!(
    title: 'Buy These Flowers!!',
    price: 4.99,
    stock: 20,
    plant: plant2
)

# Plant 3
plant3 = Plant.create!(
    name: 'Hibiscus',
    breed: '',
    description: 'Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. The genus is quite large, comprising several hundred species that are native to warm temperate, subtropical and tropical regions throughout the world.',
)

# Plant 3 Ad
Ad.create!(
    title: 'Flowers Brighter than the Sun!',
    price: 15.99,
    stock: 3,
    plant: plant3
)

# Post #1 

post1 = Post.create!(
    title: "It's the roses for me 🌹",
    description: "I recently bought new roses! I cannot BELIEVE how nice they are. 
    What's the best way to take care of them? If anyone knows, leave a comment. Thanks guys! I'll keep
    you all updated!",
    
)

post2 = Post.create!(
    title: "I love daisies!!! 🌼🌼🌼",
    description: "I am in in love with anything daisyyy! Lately, I could not find any FRESH daisies anywhere.
    Where can I find some? If anyone knows, leave a link in the comments. Keep flowering!",
    
)

comment1 = Comment.create!(
    body: 'I love this post! I too am looking to buy some roses. Could you direct me to the page that 
    you bought them from? Thanks.',
    post: post1
)

comment2 = Comment.create!(
    body: 'I agree with the comment above me^ This is a solid post. Keep it up!👍',
    post: post1
)

comment3 = Comment.create!(
    body: 'I hate this post!👎 Daises are ABSOLUTELY terrible! Do NOT make a post like
    this again - Thanks management',
    post: post2
)

comment4 = Comment.create!(
    body: 'The comment above me is just a hater. Block out the negativity.
    Keep up the great work sweetie!',
    post: post2
)

user1 = User.create!(
  email: "bob@email.com",
  password: "password"
)

user2 = User.create!(
  email: "alice@email.com",
  password: "password"
)
