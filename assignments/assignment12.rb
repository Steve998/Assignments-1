=begin
This is assignment 12 and is due on Feb 02, 2015.

Create an array of questions (Strings)
Iterate over the array using each, asking each question to the user
Bonus: Save all the answers with the questions, and print a summary at the end
=end

#!/usr/bin/ruby

puts "Hi there. What's your first name?\n\n"

name = gets.chomp

puts "\nNice to meet you, #{name.capitalize}. I'd like to ask you a few questions."

questions = ["Are you a night owl or an early riser?",
  "What's your favorite TV show?",
  "Sriracha: Evil or fab?",
  "Which are better, dogs or cats?",
  "Walmart or Target?"]

all_answers = Array.new

questions.each do |question|
  puts "\n#{question}\n"
  answer = gets.chomp
  all_answers << answer
end

puts "\n\nWow, that was an informative interview! Thanks! Here's a transcript:\n\n"

# I didn't know how to alternately iterate over two arrays, so I found this zip thing to combine two arrays into a single hash.
transcript = Hash[questions.zip(all_answers)]

transcript.each do |questions_key, all_answers_key|
  puts "#{questions_key}  #{all_answers_key}"
end
