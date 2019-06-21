# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Benjamin', password: 'benjamin23')
User.create(username: 'Sophie', password: 'sophie')
User.create(username: 'Cracagnou', password: 'cracagnou')
User.create(username: 'Bob', password: 'bob')

Message.create(body: "Sup'yo", user_id: 1)
Message.create(body: "Hey!", user_id: 2)
Message.create(body: "Mieww!", user_id: 3)
Message.create(body: "Cracagnou!", user_id: 2)
