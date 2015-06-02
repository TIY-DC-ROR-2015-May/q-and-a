require "./db/setup"
require "./lib/all"

q = Question.new
q.prompt = "How do I even?"
q.save