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

post = Post.create(title: 'HELP ME', content: "He is too nice and I don't want to hurt him." , date: "2020-12-24", time: "20:10", up_votes: 5, user: user)

comment = Comment.create(content: "Just cut it. It will feel better.", date: "2020-12-29", time: "18:10", user: user1, post: post)

message = BreakupMessage.create(message: "Hey there, it was great to meet you, but I want to be honest and let you know I just didn't feel the kind of connection I'm looking for. Best of luck with everything.", theme: "Not feeling a connection")
message1 = BreakupMessage.create(message: "Hi! I've really enjoyed getting to know you but I'm not feeling a romantic connection with you. Thanks again for the other night and hope you find what you're looking for!", theme: "Getting a friendship vibe")
message2 = BreakupMessage.create(message: "Hey. While I enjoyed our date the other night, I'm unfortunately not feeling a connection with you. I feel like we're in different places in our lives right now and don't think it makes sense to continue this right now. I hope you find what you're looking for.", theme: 'Not feeling a connection')
message3 = BreakupMessage.create(message: "Hey. I had a lot of fun with you the other day but I'd really love to just be friends with you. Let me know if you want to get together again as friends :)", theme: "Getting a friendship vibe")
message4 = BreakupMessage.create(message: "Hi! I had so much fun with you on our last date but at this time, I don't see this going further. I enjoyed spending time with you but the connection just isn't there for me. Hope you understand!", theme: "Not feeling a connection")
message5 = BreakupMessage.create(message: "Hi, thanks again for the other night. I feel like I need to be honest with you, I really enjoy hanging out with you but see us more as friends. It has been great getting to know you and hope you understand!", theme: "Getting a friendship vibe")
message6 = BreakupMessage.create(message: "Hey! I really enjoyed getting to know you but just am not looking to date/see us more as friends. Hope you understand and thanks for checking in :)", theme: "Getting a friendship vibe")
message7 = BreakupMessage.create(message: "Hey, it's been fun getting to know each other, but I'm realizing I am just too swamped to make the time I'd like for dating right now. Thanks for understanding!", theme: 'Too busy to date')
message8 = BreakupMessage.create(message: "Hey. It's been great getting to know you over the past couple of dates. But with my work schedule I don't have time to be dating anyone right now. I hope you understand!", theme: 'Too busy to date')
message9 = BreakupMessage.create(message: "Hey (insert name here). I had a good time with you, but I recently got out of a relationship and realized I'm just not ready to date. Wish you all the best.", theme: 'Not ready for a relationship right now')
message10 = BreakupMessage.create(message: "Hi! I had an awesome time with you the other night but I'm not in the place right now to be dating anyone. I have a lot going on at the moment and need to take time to focus on myself. It was really nice meeting you though!", theme: "Too busy to date")
message11 = BreakupMessage.create(message: "Hey. I've been thinking for the past couple of days and unfortunately I'm just not in a place to be in a relationship right now. With everything going on in my life at the moment, I need to focus on myself. It was great getting to you however.", theme: "Not ready for a relationship right now")
message12 = BreakupMessage.create(message: "Hey, hope you're doing well. I just wanted to reach out and say while I had a great time getting to know you, I realized I'm just not ready to date right now. Thanks again for a fun time!", theme: "Not ready for a relationship right now")
message13 = BreakupMessage.create(message: "Hey there. While it's been great getting to know you, I think we're looking for different things. I'm not ready for anything serious at the moment and I don't want to lead you on. Hope you understand.", theme: "Not ready for a relationship right now")
message14= BreakupMessage.create(message: "Hi (insert name here). This is not ideal, but I've been thinking a lot and am not really as ready as I thought I'd be to date. I really enjoyed meeting you and hope you understand.", theme: "Not ready for a relationship right now")



favorite = Favorite.create(user: user1, breakup_message: message)