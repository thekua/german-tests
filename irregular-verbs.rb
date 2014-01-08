

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
  question = question.gsub("_", "_______")
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

  def matches?(attempt)
    @answer.downcase == attempt.downcase
  end

end


def random_question_pair
  questions = [
      Question.new("behalten", "Schweizer Notenbank _ bei den Gold-Reserven trotz Verlust die Nerven", "behält"),
      Question.new("behalten", "Die Polizei _ mein Geld _", "hat behalten"),
      Question.new("beraten", "Klinik _ über neues Statement zu Schumacher", "berät"),
      Question.new("beraten", "(beraten) _ Bavaria Finanz gut _?", "hat beraten"),
      Question.new("sich befinden", "Nachfolger _ _ bereits in Entwicklung", "befand sich"),
      Question.new("sich befinden", "Der Stein _ sich acht Meter neben der markierten Piste _", "hat befunden")
  ]
  questions.sample(1)[0]
end

puts "CATEOGORY: Simple past"

def attempt_question
  question_pair = random_question_pair
  display_question(question_pair)
  attempt = get_attempt

  if question_pair.matches?(attempt)
    report_success
  else
    report_error
  end
end

while true
  attempt_question
end


