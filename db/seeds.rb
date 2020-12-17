# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
BreakupMessage.destroy_all
Favorite.destroy_all

user = User.create(name: 'Kevin', email: 'k@gmail.com', username: 'kl3', password: '123', profile_image: 'image', age: 27, relationship_status: 'wrwfw')
user1 = User.create(name: 'Sam', email: 's@gmail.com', username: 'sl3', password: '123', profile_image: 'image', age: 30, relationship_status: 'asdf')

post = Post.create(title: 'sgsg', content: 'sgsgsgs', date: "2020-12-24", time: "20:10", up_votes: 5, user: user)

comment = Comment.create(content: 'gtdegsgs', date: "2020-12-29", time: "18:10", user: user1, post: post)

message = BreakupMessage.create(message: 'goodbye!')

favorite = Favorite.create(user: user1, breakup_message: message)