# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "dvog@gmail.com", password: "password", username: "dvog")
Deck.create(title: "US History", price: 2.50, views: 100, author_id: 1)
Card.create(answer: "Thomas Jefferson")
Face.create(question: "He wrote the declaration of Independence?",
            a1: "Thomas Jefferson",
            a2: "Benjamin Franklin",
            a3: "John Adams",
            a4: "John Quincy Adams",
            card_id: Card.first.id
            )
CardsDeck.create(deck_id: Deck.first.id, card_id: Card.first.id)

User.first.subscribe(Deck.first)
