
def get_attempt
  answer = ""
  while answer.empty?
    answer = gets().chomp()
  end
  answer
end

def report_success(question_pair)
  puts "Richtig!"
  puts
end

def report_error(question_pair)
  puts "Falsch. Die richtie Antwort ist '#{question_pair.answer}'"
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

  def initialize(sentence, answer)
    @sentence = sentence
    @answer = answer
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
    Question.new("Dies ist die Geschichte einer sehr heiß_ Sehnsucht.", "heißen"), #dativ
    Question.new("Um ein Bedürfnis nach Rückversicherung und Gemeinschaft, ohne das wohl keiner der viel_ neu_ Pläne entstanden wäre", "vielen neuen"), #dativ plural
    Question.new("Der Erfolg dies_ schwebende_ Parks hat viele in New York ermutigt", "dieses schwebenden"), #dativ plural
    Question.new("Ein_ schick_ Altbauwohnung mit Dielen und hoh_ Decken", "eine shicke hohen"),
    Question.new("Flexibilität führt in dies_ Fall zu Authentizität", "diesem"),
    Question.new("Zum Beispiel das Drei-Zimmer-Apartment in Redfern, ein_ hübsch_ Viertel in Sydney", "einem hübschen"),
    Question.new("Sie sind teilweise auf Slowenisch und erzählen vom Aufwachsen in ein_ neu_ Land, ohne die alte Heimat zu vergessen",
      "einem neuen"),
      Question.new("Oder d_ abgetrennt_ Zimmer in der Etagenwohnung in Madrid – wo die Besucher ein_ eigen_ Badezimmer haben, aber mit der Gastgeberin in der Küche den Frühstücks-Cortado trinken können",
          "das abgetrennte ein eingenes")
  ]

  
  questions.sample(1)[0]
end

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


puts adjektives


