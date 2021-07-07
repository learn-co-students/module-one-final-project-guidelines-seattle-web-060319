require_relative '../config/environment'

example = Scraper.new

rwp = example.get_words


 #same answer

  def filter(rwp)#returns clean word for API
      filtered_word = []
      word = rwp.sample
          if word.include?(",") || word.include?("(")
              filter(rwp)
          else
              filtered_word.push(word)
              return filtered_word[0]
          end

      end


  def fake_answer(rwp)
    words = filter(rwp)
    words
  end

  correctAns = filter(rwp)



  answerArr = [correctAns, fake_answer(rwp), fake_answer(rwp), fake_answer(rwp)]

  optionA = answerArr.sample
  answerArr.delete(optionA)
  optionB = answerArr.sample
  answerArr.delete(optionB)
  optionC = answerArr.sample
  answerArr.delete(optionC)
  optionD = answerArr.sample
  answerArr1 = [correctAns, fake_answer(rwp), fake_answer(rwp), fake_answer(rwp)]

  options = {'a' => optionA, 'b' => optionB, 'c' => optionC, 'd' => optionD}


class Question
     attr_accessor :prompt, :answer
     def initialize(prompt)
          @prompt = prompt
          @answer = answer
     end
end



p1 = "Which of the following words means: -puts definition here- ?\n(a) #{optionA}\n(b)#{optionB}\n(c)#{optionC}\n(d)#{optionD}"
#p2 = "Which of the following words means: -puts definition here- ?\n(a) #{correctAns}\n(b)#{fake_answer(example)}\n(c)#{fake_answer(example)}\n(d)#{fake_answer(example)}"


questions = [
     Question.new(p1)
     #Question.new(p2, "b")
]

def run_quiz(questions, answers, options)

    correctAnswer = answers[0]
     answer = ""
     score = 0

     binding.pry

     for question in questions
          puts question.prompt
          answer = gets.chomp()
          if correctAnswer == options[answer]
               score += 1
             elsif correctAnswer != options[answer]
               score -= 1

          end
     end
     puts "you got #{score} out of #{questions.length()}"
     return score
end

binding.pry
0
