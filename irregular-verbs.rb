

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


def random_question_pair
  questions = {
      "(behalten) Schweizer Notenbank _______ bei den Gold-Reserven trotz Verlust die Nerven ______" => ["behält", "hatte behalten"],
      "(beraten) Klinik berät über neues Statement zu Schumacher" => ["berät"],
      "(sich befinden) ____ sich auch dem Web von Bordeaux nach Westafrika" => ["befand"],
      "(sich befinden) Der Stein ____ sich acht Meter neben der markierten Piste _____" => ["hat befunden"]
  }
  questions.to_a.sample(1)[0]
end

puts "CATEOGORY: Simple past"

def attempt_question
  question_pair = random_question_pair
  question = question_pair[0]
  answer = question_pair[1]

  puts question
  puts
  attempt = get_attempt

  if answer.include?(attempt)
    report_success
  else
    report_error
  end
end

while true
  attempt_question
end


