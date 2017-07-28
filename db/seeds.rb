10.times do
  User.create!(username: Faker::Pokemon.name, password_hash: 'password', email: Faker::Internet.email)
end

25.times do
  Question.create!(title: Faker::Hipster.sentence, content: Faker::Hipster.paragraph, author_id: rand(1..10))
end

25.times do
  Answer.create!(content: Faker::Hipster.paragraph, author_id: rand(1..10), question_id: rand(1..10))
end

60.times do
  Comment.create!(content: Faker::ChuckNorris.fact, author_id: rand(1..10), commentable_id: rand(1..10), commentable_type: ['question', 'answer'].sample)
end
