# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])


Answer.destroy_all
Challenge.destroy_all
Member.destroy_all
Team.destroy_all
TeamChallenge.destroy_all
User.destroy_all
City.destroy_all

user1 = User.create!(email: "manon@lol.me", password: "FGHJKL", first_name: "Manoune", last_name: "Cool")


brussels = City.create!(name: "Brussels", picture: 'brussels.jpeg')
paris = City.create!(name: "Paris", picture: 'paris.jpeg')
amsterdam = City.create!(name: "Amsterdam", picture: 'amsterdam.jpeg')
london = City.create!(name: "London", picture: 'london.jpeg')

challenge1 = Challenge.create!(title: "Question 1", description: "Find the good answer !", address: "123, avenue molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge2 = Challenge.create!(title: "Question 2", description: "Find the answer !", address: "180 avenue de floréal 1180 Belgium", score: 10, good_answer: nil, bad_answers: nil, hint: nil, input_type: "picture", picture: "", cost: 1, gift: "Promo code 13", city_id: brussels.id)
challenge3 = Challenge.create!(title: "Question 3", description: "Find the lkjhgfdanswer !", address: "28 avenue de la galaxie 1410 Waterloo", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "auto", picture: "", cost: 5, gift: "Promo code 14", city_id: brussels.id)
challenge4 = Challenge.create!(title: "Question 4", description: "Find thelkjhgf answer !", address: "28 avenue de la galaxie 1410 Waterloo", score: 20, good_answer: nil, bad_answers: nil, hint: "start with P", input_type: "picture", picture: "", cost: 5, gift: "Promo code 14", city_id: brussels.id)
challenge5 = Challenge.create!(title: "Question 5", description: "Good answer !", address: "123 avenue molière 1050 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "text", picture: "", cost: 1, gift: "Promo code 1234", city_id: brussels.id)
challenge6 = Challenge.create!(title: "Question 6", description: "trouve la rep", address: "180 avenue de floréal 1180 Belgium", score: 10, good_answer: nil, bad_answers: nil, hint: nil, input_type: "picture", picture: "", cost: 1, gift: "Promo code 13", city_id: brussels.id)
challenge7 = Challenge.create!(title: "Question 7", description: "Find the lkjhgfdanswer !", address: "170 avenue de galaxie 1180 Belgium", score: 10, good_answer: "Pix", bad_answers: "Pix, Loo, Poux", hint: "start with P", input_type: "auto", picture: "", cost: 5, gift: "Promo code 14", city_id: brussels.id)
challenge8 = Challenge.create!(title: "Question 8", description: "Fiwer !", address: "170 avenue de galaxie 1180 Belgium", score: 20, good_answer: nil, bad_answers: nil, hint: "start with P", input_type: "picture", picture: "", cost: 5, gift: "Promo code 14", city_id: brussels.id)


team1 = Team.create!(title: "Les blondes", team_picture: "", start_date: Date.tomorrow, end_date: Date.tomorrow, city_id: brussels.id)

# Answer.create!(text: "bonbon", status: Answer::COMPLETED, picture: "", team_id: team1.id, challenge_id: challenge1.id)
# Answer.create!(text: "bonbon", status: Answer::COMPLETED, picture: "", team_id: team1.id, challenge_id: challenge2.id)



Member.create!(score: 120, user_id: user1.id, team_id: team1.id)


TeamChallenge.create!(challenge_id: challenge1.id, team_id: team1.id)



