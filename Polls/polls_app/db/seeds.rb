# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: Faker::Name.unique.first_name)
user2 = User.create(username: Faker::Name.unique.first_name)
user3 = User.create(username: Faker::Name.unique.first_name)
user4 = User.create(username: Faker::Name.unique.first_name)
user5 = User.create(username: Faker::Name.unique.first_name)
user6 = User.create(username: Faker::Name.unique.first_name)
user7 = User.create(username: Faker::Name.unique.first_name)
user8 = User.create(username: Faker::Name.unique.first_name)
user9 = User.create(username: Faker::Name.unique.first_name)
user10 = User.create(username: Faker::Name.unique.first_name)

p1 = Poll.create(title: "What y'all like", user_id: user5.id)

q1 = Question.create(text: "Which one?", poll_id: p1.id)
q2 = Question.create(text: "How you doing", poll_id: p1.id)

a1 = AnswerChoice.create(text: "The first", question_id: q1.id)
a2 = AnswerChoice.create(text: "The second", question_id: q1.id)
a3 = AnswerChoice.create(text: "Pretty good", question_id: q2.id)
a4 = AnswerChoice.create(text: "Not bad", question_id: q2.id)

r1 = Response.create(answer_choice_id: a1.id, user_id: user8.id)
r2 = Response.create(answer_choice_id: a1.id, user_id: user3.id)
r3 = Response.create(answer_choice_id: a2.id, user_id: user7.id)
r4 = Response.create(answer_choice_id: a2.id, user_id: user1.id)
