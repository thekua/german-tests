

# Show a question_pair
# Get the attempt from input
# Print out yes or not
#
#
#
#

def get_attempt
  answer = ""
  while answer.empty?
    answer = gets().chomp()
  end
  answer
end

def report_success
  puts "Success"
  puts
end

def report_error
  puts "Failure"
  puts
end

def display_question(question_pair)
  question = question_pair.question
  verb = question_pair.verb
  puts "(#{verb}) #{question}"
  puts
end

class Question

  def initialize(verb, sentence, answer)
    @verb = verb
    @sentence = sentence
    @answer = answer
  end

  def verb
    @verb
  end

  def question
    @sentence
  end

  def answer
    @answer
  end

end


def random_question_pair
  questions = [
      Question.new("behalten", "Schweizer Notenbank _______ bei den Gold-Reserven trotz Verlust die Nerven ______", "behält"),
      Question.new("behalten", "Die Polizei ____ mein Geld ____", "hat behalten"),
      Question.new("beraten", "Klinik ____ über neues Statement zu Schumacher", "berät"),
      Question.new("beraten", "(beraten) ___ Bavaria Finanz gut ___?", "hat beraten"),
      Question.new("sich befinden", "____ sich auch dem Web von Bordeaux nach Westafrika", "befand"),
      Question.new("sich befinden", "Der Stein ____ sich acht Meter neben der markierten Piste _____", "hat befunden")
  ]
  questions.sample(1)[0]
end

puts "CATEOGORY: Simple past"

def attempt_question
  question_pair = random_question_pair
  answer = question_pair.answer
  display_question(question_pair)
  attempt = get_attempt

  if answer === attempt
    report_success
  else
    report_error
  end
end

while true
  attempt_question
end


