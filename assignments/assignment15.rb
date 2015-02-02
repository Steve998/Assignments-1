=begin This is assignment 15 and is due on Feb 02, 2015.

Copy and then modify assignment 12 to read the questions from a file instead of the hard coded array
Load them into an array so the rest of the program can remain the same
If your assignment 12 is coded correctly, you won't have to change the part that asks questions
Can be done with two lines of code
Remember to have the text file of questions in the same directory where your Ruby code is
=end

#!/usr/bin/ruby

puts "Hi there. What's your first name?\n\n"

name = gets.chomp

puts "\nNice to meet you, #{name.capitalize}. I'd like to ask you a few questions."

# This section is new for this assignment.
file = File.new("assignment15_questions.txt")
questions = file.readlines

# This section was moved to file "assignment15_questions.txt"
#questions = ["Are you a night owl or an early riser?",
#  "What's your favorite TV show?",
#  "Sriracha: Evil or fab?",
#  "Which are better, dogs or cats?",
#  "Walmart or Target?"]

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
