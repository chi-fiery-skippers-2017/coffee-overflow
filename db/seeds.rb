require 'faker'

10.times do
  User.create!(username: Faker::Pokemon.name, password_hash: 'password', email: Faker::Internet.email)
end

10.times do
  Question.create!(title: Faker::Hipster.sentence, content: Faker::Hipster.paragraph, author_id: rand(1..10))
end

25.times do
  Answer.create!(content: Faker::Hipster.paragraph, author_id: rand(1..10), question_id: rand(1..10))
end

60.times do
  comment = Comment.new(content: Faker::ChuckNorris.fact, author_id: rand(1..10))
  comment.commentable = Answer.all.sample
  comment.save
end

60.times do
  comment = Comment.new(content: Faker::ChuckNorris.fact, author_id: rand(1..10))
  comment.commentable = Question.all.sample
  comment.save
end
