

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



def random_question_pair
  questions = {
      "(behalten) Schweizer Notenbank _______ bei den Gold-Reserven trotz Verlust die Nerven" => ["behält"]
  }
  questions.to_a.sample(1)[0]
end

puts "CATEOGORY: Simple past"
question_pair = random_question_pair
puts question_pair[0]
puts
attempt = get_attempt

answer = question_pair[1]

if answer.include?(attempt)
  puts "Success"
else
  puts "Fail"
end