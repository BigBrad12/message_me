# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Brad", password: "password")
User.create(name: "Gandalf", password: "password")
User.create(name: "Frodo", password: "password")
User.create(name: "Arya", password: "password")

Message.create(body: "Oh Sam!", user_id: 3)
Message.create(body: "I'm not a girl!", user_id: 4)
Message.create(body: "I'll call it needle", user_id: 4)
Message.create(body: "Fly, you fools!", user_id: 2)
Message.create(body: "We must trust now in Frodo", user_id: 2)
Message.create(body: "Wicked", user_id: 1)
