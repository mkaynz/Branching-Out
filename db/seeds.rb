# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(
  email: "bob@email.com",
  password: "password"
)

user2 = User.create!(
  email: "alice@email.com",
  password: "password"
)

user3 = User.create!(
  email: "afro@email.com",
  password: "watch_rezero"
)

user4 = User.create!(
  email: "lucy@email.com",
  password: "password"
)

user5 = User.create!(
  email: "natsu@email.com",
  password: "password"
)

# Plant 1
plant1 = Plant.create!(
    name: 'Pearlwort',
    breed: '',
    description: 'This plant grows in Antartica! Crazy, right?!',
    price: 12.99,
    stock: 6,
    creator: user1
)

# Plant 1 Ad
Ad.create!(
    title: 'Cool Flowers Ready for Winter!?',
    plant: plant1,
    creator: user1
)

# Plant 1 Review
Review.create!(
    body: 'Not the best looking flower but whatever...',
    rating: 5,
    plant: plant1,
    creator: user3
)

Tip.create!(
    body: 'NUMBER ONE RULE -- Don\'t sit these flowers in the sun for too long! These flowers dry out easily',
    plant: plant1
)

# Plant 2
plant2 = Plant.create!(
    name: 'Marguerite Daisy',
    breed: '',
    description: 'Marguerite daisy flowers are a small shrub-like perennial in the family Asteraceae, which are native to the Canary Islands. This little herbaceous perennial is a nice addition to flower beds, borders or as a container specimen.',
    price: 4.99,
    stock: 20,
    creator: user2
)

# Plant 2 Ad
Ad.create!(
    title: 'Buy These Flowers!!',
    plant: plant2,
    creator: user2
)

# Plant 3
plant3 = Plant.create!(
    name: 'Hibiscus',
    breed: 'Tiger Lily',
    description: 'Hibiscus is a genus of flowering plants in the mallow family, Malvaceae. The genus is quite large, comprising several hundred species that are native to warm temperate, subtropical and tropical regions throughout the world.',
    price: 15.99,
    stock: 3,
    creator: user2
)

# Plant 3 Ad
Ad.create!(
    title: 'Flowers Brighter than the Sun!',
    plant: plant3,
    creator: user2
)

Ad.create!(
    title: 'Just Buy This!',
    plant: plant3,
    creator: user2
)

plant4 = Plant.create!(
    name: 'Piranaha Plant',
    breed: 'Petey Piranaha',
    description: 'Petey Piranha is a large mutant Piranha Plant with a ring of petals on his head. His first appearance is in Super Mario Sunshine, and since then he has become a common and recurring boss in Mario titles.',
    price: 5999.99,
    stock: 2,
    creator: user3
)

Tip.create!(
    body: 'I suggest keeping this plant in a cage. When feeding it, be sure to stand FAAAAR away. Giving it a load of bones will have it satisfied enough to maybe not eat you. Lastly if you\'re playing a sport Petey Piranaha is the perfect partner.',
    plant: plant4
)

plant5 = Plant.create!(
    name: 'Rose',
    breed: 'Mister Lincoln',
    description: '\'Mister Lincoln\' is a vigorous, tall upright shrub, 4 to 7 ft in height. Blooms are very large, 6 in or more in diameter, with 30 to 35 petals. The rose has a strong damask fragrance. The high-centered, deep red petals are generally borne singly on long stems and do not fade, even in the hottest climates. The shrub is a repeat bloomer. The buds are deep red and open up into large, velvety red, double blossoms. The foliage is dark red when young and becomes leathery and dark, matte green when the plant is older. It is generally healthy and heat tolerant, but is susceptible to blackspot.',
    price: 21.55,
    stock: 26,
    creator: user4
)

plant6 = Plant.create!(
    name: 'Bat Plant',
    breed: '',
    description: 'The bat flower is an exotic plant with flowers that mimic a bat in flight, deep purple with ruffled wings, and long, hanging filaments. Indoor blooms and those outside in semi-tropical climates may appear in spring and last until early autumn. Large, attractive leaves surround the bloom.',
    price: 69.69,
    stock: 8,
    creator: user5
)

Tip.create!(
    body: 'Be aware this thing doesn\'t fly. Now I don\'t want it 😠',
    plant: plant6
)

Ad.create!(
    title: 'Bat but It\'s a Plant',
    plant: plant6,
    creator: user5
)

plant7 = Plant.create!(
    name: 'Stinking Corpse Lily',
    breed: '',
    description: 'One of the world\'s largest and rarest flowering structures, the corpse flower is a pungent plant that blooms rarely and only for a short time. While it is in bloom, the flower emits a strong odor similar to rotting meat or, aptly, a decaying corpse. There is a good reason for the plant\'s strong odor',
    price: 30.99,
    stock: 13,
    creator: user4
)

Tip.create!(
    body: '🤮',
    plant: plant7
)

# Post #1 

post1 = Post.create!(
    title: "It's the roses for me 🌹",
    description: "I recently bought new roses! I cannot BELIEVE how nice they are. 
    What's the best way to take care of them? If anyone knows, leave a comment. Thanks guys! I'll keep
    you all updated!",
    creator: user1
)

post2 = Post.create!(
    title: "I love daisies!!! 🌼🌼🌼",
    description: "I am in in love with anything daisyyy! Lately, I could not find any FRESH daisies anywhere.
    Where can I find some? If anyone knows, leave a link in the comments. Keep flowering!",
    creator: user2
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

