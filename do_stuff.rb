require "./db/setup"
require "./lib/all"

require 'pry'

require 'faker'

10.times do
  q = Question.new
  q.prompt = Faker::Lorem.paragraph
  q.save
end

questions = Question.last(10)

5.times do
  # create automatically saves
  user = User.create(name: Faker::Name.name)

  rand(1..10).times do
    Answer.create(
      user_id: user.id,
      question_id: questions.sample.id,
      answer: Faker::Company.catch_phrase
    )
  end
end