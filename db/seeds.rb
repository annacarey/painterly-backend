# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "Anna", password: "123")
u2 = User.create(username: "Saman", password: "123")

c1 = Collection.create(title: "first book", user: u1)
c2 = Collection.create(title: "second book", user: u2)

p1 = Painting.create(title: "new painting", user: u1, grid: [])
p2 = Painting.create(title: "rainbow painting", user: u2, grid: [1])
p3 = Painting.create(title: "colorful painting", user: u2, grid: [[2], [3]])



