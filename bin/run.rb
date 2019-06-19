require_relative '../config/environment'



puts "HELLO WORLD"


class Question
     attr_accessor :prompt, :answer
     def initialize(prompt, answer)
          @prompt = prompt
          @answer = answer
     end
end

p1 = "What color are apples?\n(a) Red/Green\n(b)Orange"
p2 = "What color are bananas?\n(a) Red/Green\n(b)Yellow"

questions = [
     Question.new(p1, "a"),
     Question.new(p2, "b")
]

def run_quiz(questions)
     answer = ""
     score = 0
     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if answer == question.answer
               score += 1
          end
     end
     puts "you got #{score} out of #{questions.length()}"
end

run_quiz(questions)




binding.pry
0
