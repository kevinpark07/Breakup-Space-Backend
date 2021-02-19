# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Favorite.destroy_all
User.destroy_all
Post.destroy_all
Comment.destroy_all
BreakupMessage.destroy_all
Quiz.destroy_all
Topic.destroy_all

user = User.create(name: 'Kevin', email: 'k@gmail.com', username: 'kl3', password: '123', profile_image: 'image', age: 27, relationship_status: 'wrwfw')
user1 = User.create(name: 'Sam', email: 's@gmail.com', username: 'sl3', password: '123', profile_image: 'image', age: 30, relationship_status: 'asdf')

post = Post.create(title: 'HELP ME', content: "He is too nice and I don't want to hurt him." , date: "2020-12-24", time: "20:10:00", up_votes: 5, user: user)
post1 = Post.create(title: "I Just Don't Know", content: "I'm just not having fun anymore..." , date: "2021-01-17", time: "18:10:00", up_votes: 6, user: user1)

comment = Comment.create(content: "Just cut it. It will feel better.", date: "2020-12-29", up_votes: 2, time: "18:10:22", user: user1, post: post)

theme1 = Topic.create(theme: 'not ready to date')
theme2 = Topic.create(theme: 'bad timing')
theme3 = Topic.create(theme: 'friendzone')
theme4 = Topic.create(theme: 'no connection')

Quiz.create(topic: theme1, question: 'What’s the reason you’re not ready?', answers: 'Just got out of relationship| We want different things |Don’t want to get too serious')
Quiz.create(topic: theme1, question: 'What vibe do you want?-  Describe your text vibe.', answers: 'Casual| Friendly & Bubbly| Direct')
Quiz.create(topic: theme1, question: 'How many dates have you been on?- Hey what’s your number?', answers: '1-2| 2-4| 5')
Quiz.create(topic: theme1, question: 'What’s this person’s vibe?', answers: 'Relaxed| Always smiling| Serious')

Quiz.create(topic: theme4, question: 'What’s the reason you’re not feeling a connection?', answers: "Just not feeling it| Made me feel uncomfortable")
Quiz.create(topic: theme4, question: "What’s the reason they made you feel uncomfortable?", answers: "Something they said| Inappropriate behavior/physical behavior| Rude/inconsiderate")
Quiz.create(topic: theme4, question: 'How many dates have you been on?- Hey what’s your number?', answers: '1-2| 2-4| 5')

Quiz.create(topic: theme3, question: 'What vibe do you want?-  Describe your text vibe.', answers: 'Casual| Friendly & Bubbly| Direct')
Quiz.create(topic: theme3, question: 'Any physical contact?- Tell us more, tell us more. Did you get very far? P.s. consent is hot', answers: "No physical contact| Holding Hands| Kissing| Hot & heavy")
Quiz.create(topic: theme3, question: 'What’s this person’s vibe?', answers: 'Relaxed| Always smiling| Serious')

Quiz.create(topic: theme2, question: 'What’s the reason you’re not ready?', answers: 'Work| Focus on yourself')
Quiz.create(topic: theme2, question: 'How many dates have you been on?- Hey what’s your number?', answers: '1-2| 2-4| 5')
Quiz.create(topic: theme2, question: 'How do you feel about breaking things off?', answers: 'Indifferent| Happy/Relieved| Sad')
Quiz.create(topic: theme2, question: 'What’s this person’s vibe?', answers: 'Relaxed| Always smiling| Serious')


message1 = BreakupMessage.create(topic: theme1, tone: 'casual', subject: 'don’t want to get too serious', message: "Hi (insert name here). This is not ideal, but I'm just not really as ready as I thought I'd be to date. I really enjoyed meeting you and hope you understand.")
message2 = BreakupMessage.create(topic: theme1, tone: 'friendly', subject: 'don’t want to get too serious', message: "Hey, hope you're doing well. I just wanted to reach out and say while I had a great time getting to know you, I realized I'm just not ready to date right now. Thanks again for a fun time!")
message3 = BreakupMessage.create(topic: theme1, tone: 'direct', subject: 'don’t want to get too serious', message: "Hey. I've been thinking for the past couple of days and unfortunately I'm just not in a place to be in a relationship right now. With everything going on in my life at the moment, I need to focus on myself.")
message4 = BreakupMessage.create(topic: theme1, tone: 'casual', subject: 'we want different things', message: "Hey there. I feel like we're looking for different things and it wouldn’t be fair for me to lead you on. Hope you understand.")
message5 = BreakupMessage.create(topic: theme1, tone: 'friendly', subject: 'we want different things', message: "Hey (insert name here). I had so much fun hanging with you, but I think we're looking for different things. I hope you can understand and find what you are looking for.")
message6 = BreakupMessage.create(topic: theme1, tone: 'direct', subject: 'we want different things', message: "Hey (insert name here). While it's been great getting to know you, I think we're looking for different things. I'm not ready for anything serious at the moment and I don't want to lead you on. Hope you understand.")
message7 = BreakupMessage.create(topic: theme1, tone: 'casual', subject: 'just got out of relationship', message: "Hey. I just got out of something and am just not looking to date right now. Thank you for understanding.")
message8 = BreakupMessage.create(topic: theme1, tone: 'friendly', subject: 'just got out of relationship', message: "Hey (insert name here). I really enjoyed getting to know you and you deserve the best. I just got out of a relationship recently and realized I am just not ready to date yet. I am sorry to tell you over text and hope you can understand.")
message9 = BreakupMessage.create(topic: theme1, tone: 'direct', subject: 'just got out of relationship', message: "Hey (insert name here). I had a good time with you, but I recently just got out of a relationship and realized I'm just not ready to date. Wish you all the best.")

message10 = BreakupMessage.create(topic: theme4, tone: 'something they said', subject: 'made me feel uncomfortable', message: "Hi, I want to be honest with you. What you said on our date was not okay. I do not see this going anywhere. Thanks for understanding.")
message11 = BreakupMessage.create(topic: theme4, tone: 'inappropriate behavior/physical behavior', subject: 'made me feel uncomfortable', message: "Hi, I want to be honest with you. What you did on our date was not okay and made me very uncomfortable. I do not see this going anywhere and please do not contact me.")
message12 = BreakupMessage.create(topic: theme4, tone: 'rude/inconsiderate', subject: 'made me feel uncomfortable', message: "Hi, I want to be honest with you. I do not see us going any further. Thanks for understanding.")
message13 = BreakupMessage.create(topic: theme4, tone: 'casual', subject: "just not feeling it", message: "Hey there, it was great to meet you, but I want to be honest and let you know I just didn't feel the kind of connection I'm looking for. Best of luck with everything!")
message14 = BreakupMessage.create(topic: theme4, tone: 'friendly', subject: "just not feeling it", message: "Hi! I had so much fun with you on our last date but at this time, I don't see this going further. I enjoyed spending time with you but the connection just isn't there for me. Hope you understand")
message15 = BreakupMessage.create(topic: theme4, tone: 'direct', subject: "just not feeling it", message: "Hey. While I enjoyed our date, I'm unfortunately not feeling a connection with you. I feel like we're in different places in our lives right now and don't think it makes sense to continue this right now. I hope you find what you're looking for.")

message16 = BreakupMessage.create(topic: theme3, tone: 'casual', message: "Hey. I had a lot of fun with you the other day but I'm not feeling a romantic connection with you. Let me know if you want to get together again as friends :)")
message17 = BreakupMessage.create(topic: theme3, tone: 'friendly', message: "Hi! The last thing I want to do is hurt you but feel like I need to be honest. I've really enjoyed getting to know you but only seeing this going as far as friends. I would love to be friends if you are down too. Either way I hope you can understand.")
message18 = BreakupMessage.create(topic: theme3, tone: 'direct', message: "Hi, thanks again for the other night. I feel like I need to be honest with you, I really enjoy hanging out with you but see us more as friends. It has been great getting to know you and hope you understand.")

message19 = BreakupMessage.create(topic: theme2, tone: 'casual', subject: 'focus on yourself', message: "Hey, it's been fun getting to know each other, but I'm realizing I am just too swamped to make the time I'd like for dating right now. Thanks for understanding!")
message20 = BreakupMessage.create(topic: theme2, tone: 'friendly', subject: 'focus on yourself', message: "Hi! I had an awesome time with you the other night but I'm not in the place right now to be dating anyone. I have a lot going on at the moment and need to take time to focus on myself. It was really nice meeting you though!")
message21 = BreakupMessage.create(topic: theme2, tone: 'direct', subject: 'focus on yourself', message: "Hey (insert name here), I really enjoyed getting to know you and spending time with you, but I'm realizing this time of my life right now I cannot make the time I'd like for dating. Thank you for understanding and I wish you nothing but the best.")
message22 = BreakupMessage.create(topic: theme2, tone: 'casual', subject: 'work', message: "Hey, it's been fun getting to know each other, but I'm realizing I am just too swamped at work to to date right now. Thanks for understanding!")
message23 = BreakupMessage.create(topic: theme2, tone: 'friendly', subject: 'work', message: "Hey. It's been great getting to know you over the past couple of dates. But with my work schedule I don't have time to be dating anyone right now. I hope you understand!")
message24 = BreakupMessage.create(topic: theme2, tone: 'direct', subject: 'work', message: "Hey (insert name here). I really enjoyed getting to know you and spending time with you, but my work schedule is picking up and I unfortunately don't have the time I would like to date anyone right now. Thank you for understanding and I hope you find what you are looking for.")

favorite1 = Favorite.create(user: user1, breakup_message: message1)
favorite2 = Favorite.create(user: user1, breakup_message: message3)
favorite3 = Favorite.create(user: user1, breakup_message: message13)
favorite4 = Favorite.create(user: user1, breakup_message: message9)
favorite5 = Favorite.create(user: user1, breakup_message: message11)