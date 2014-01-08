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

q = Question.new("v", "sen", "answer")
puts q.verb, q.question, q.answer