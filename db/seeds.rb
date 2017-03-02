# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

# drop_table(:users, if_exists: true) in 
# a migration ensures that the migration will run without exceptions, whether or not the “users” table exists.
Show.destroy_all
Season.destroy_all
Episode.destroy_all



firefly = Show.create(name: 'Firefly', rating: 10, img_url:'http://i.imgur.com/d7ozhrH.jpg', info: 'Best show ever created')
	ffsplit= firefly.seasons.create(name:'ffseason1', numb: 1)
		ffsplit.episodes.create(name: 'ffep1', epnumb: 1, link_url:"https://www.youtube.com/embed/9BTvqo3jzoc")
		ffsplit.episodes.create(name: 'ffep2', epnumb: 2, link_url:'https://www.youtube.com/embed/7DiWxcilWtU')
		ffsplit.episodes.create(name: 'ffep3', epnumb: 3, link_url: 'https://www.youtube.com/embed/nMEHJPuggHQ')

fringe = Show.create(name: 'Fringe', rating: 8, img_url:'http://i.imgur.com/ECjnv6k.jpg', info: 'Scifi Madness')
	frsplit = fringe.seasons.create(name:'frseason1', numb: 1)
		frsplit.episodes.create(name: 'frep1', epnumb: 1, link_url:"https://www.youtube.com/embed/QwEnXLFDZBg") 
		frsplit.episodes.create(name: 'frep2', epnumb: 2, link_url:"https://www.youtube.com/embed/mTfIuw_IEPQ")
		frsplit.episodes.create(name: 'frep3', epnumb: 3, link_url: 'https://www.youtube.com/embed/nMEHJPuggHQ')

 cosmos = Show.create(name: 'Cosmos', rating: 10, img_url:"http://i.imgur.com/EFkfrxU.jpg", info: 'Greatest Sci Doc')
 	cossplit = cosmos.seasons.create(name:'cosseason1', numb: 1)
		cossplit.episodes.create(name: 'cosep1', epnumb: 1, link_url:"https://www.youtube.com/embed/IwCHKyD7awA") 
		cossplit.episodes.create(name: 'cosep2', epnumb: 2, link_url:"https://www.youtube.com/embed/IwCHKyD7awA")
		cossplit.episodes.create(name: 'cosep3', epnumb: 3, link_url: "https://www.youtube.com/embed/IwCHKyD7awA")

# nat = User.create(email: 'nat@email.com', password: '444444', first_name: 'Nat')
#   coding = nat.lists.create(name: 'Coding Projects')
#     coding.todos.create(name: 'Game of Thrones lab')
#     coding.todos.create(name: 'todo list app')
#   outcomes = nat.lists.create(name: 'Outcomes Prep')
#     outcomes.todos.create(name: 'LinkedIn profile')
#     outcomes.todos.create(name: 'Résumé')

# tim = User.create(email: 'tim@email.com', password: '444444', first_name: 'Tim')
#   chores = tim.lists.create(name: 'Household Chores')
#     chores.todos.create(name: 'dishes')
#     chores.todos.create(name: 'laundry')
#   shopping = tim.lists.create(name: 'Shopping')
#     shopping.todos.create(name: 'dish soap')
#     shopping.todos.create(name: 'laundry detergent')

# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)