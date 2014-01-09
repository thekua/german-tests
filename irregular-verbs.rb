
def get_attempt
  answer = ""
  while answer.empty?
    answer = gets().chomp()
  end
  answer
end

def report_success(question_pair)
  puts "Success"
  puts
end

def report_error(question_pair)
  puts "Failure. The right answer is #{question_pair.answer}"
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
      Question.new("behalten", "Schweizer Notenbank _ bei den Gold-Reserven trotz Verlust die Nerven", "behielt"),
      Question.new("behalten", "Die Polizei _ mein Geld _", "hat behalten"),
      Question.new("backen", "Ich _ dunkles Brot _","habe gebacken"),
      Question.new("begreifen", "Er _, daß er etwas vergessen hatte", "begriff"),
      Question.new("backen", "Er _ dunkles Brot", "backte"),
      Question.new("beraten", "Klinik _ über neues Statement zu Schumacher", "beriet"),
      Question.new("beraten", "_ Bavaria Finanz gut _?", "hat beraten"),
      Question.new("sich befinden", "Nachfolger _ _ bereits in Entwicklung", "befand sich"),
      Question.new("sich befinden", "Der Stein _ _ acht Meter neben der markierten Piste _", "hat sich befunden")
  ]
  questions.sample(1)[0]
end

puts "CATEOGORY: Simple past"

def attempt_question
  question_pair = random_question_pair
  display_question(question_pair)
  attempt = get_attempt

  if question_pair.matches?(attempt)
    report_success(question_pair)
  else
    report_error(question_pair)
  end
end

while true
  attempt_question
end


