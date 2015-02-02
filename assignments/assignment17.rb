=begin This is assignment 17 and is due on Feb 03, 2015.

Read about HTTP
Read review on using JSON in Ruby
Look thru some JSON Examples
Copy assignment 15 and modify to now read in questions from a JSON file
This means you need to create a JSON file of you questions
Read and parse the JSON into an array so the rest of the app remains the same
=end

#!/usr/bin/ruby

require 'json'

puts "Hi there. What's your first name?\n\n"

name = gets.chomp

puts "\nNice to meet you, #{name.capitalize}. I'd like to ask you a few questions."

# This section is new for this assignment.
#file = File.new("assignment15_questions.txt")
#questions = file.readlines

file = File.read('assignment17_questions.json')
questions = JSON.parse(file)["questions"]


# This content was formatted as JSON and moved to  "assignment17_questions.json"
#{ "questions":
#  [
#  "Are you a night owl or an early riser?",
#  "What's your favorite TV show?",
#  "Sriracha: Evil or fab?",
#  "Which are better, dogs or cats?",
#  "Walmart or Target?"
#  ]
#}

all_answers = Array.new

questions.each do |question|
  puts "\n#{question}\n"
  #answer = gets.chomp
  #all_answers << answer
  all_answers << gets.chomp
end

puts "\n\nWow, that was an informative interview! Thanks! Here's a transcript:\n\n"

# This section doesn't work now that questions are in a separate file.
# I didn't know how to alternately iterate over two arrays, so I found this zip thing to combine two arrays into a single hash.
transcript = Hash[questions.zip(all_answers)]

transcript.each do |questions_key, all_answers_key|
  puts "#{questions_key}  #{all_answers_key}"
end
