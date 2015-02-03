=begin
This is assignment 20 and is due on Feb 04, 2015.

Note: Please check in your Gemfile and Gemfile.lock
write a Ruby script that uses the Rails ActiveSupport gem, installed via a Gemfile and bundler
the script should do the following when run:
1) Show the date of the beginning of the current week
2) Show what the date will be in 30 days
3) Show what day of the week today's date will fall on next year
4) Show what day of the week the user's birthday will be on this year
5) Using the String class, pluralize a singular word the user enters and show the singular for a plural word the user enters
6) Using the String class, truncate a phrase the user enters to 20 letters
7) Using the Array class, convert an array of three words to a sentence with one command

You'll need the following Rails extensions that come with ActiveSupport:
http://api.rubyonrails.org/v4.0.3/classes/Date.html
http://api.rubyonrails.org/v4.0.3/classes/String.html
http://api.rubyonrails.org/v4.0.3/classes/Array.html
http://api.rubyonrails.org/v4.0.3/classes/Numeric.html
=end

#!/usr/bin/ruby
require 'active_support'
require 'active_support/all'

puts "Hi, Brian.\n\n"

# Shows the date of the beginning of the current week
puts "The date of the beginning of the current week: \n\n#{Date.today.beginning_of_week}.\n\n"

# Shows what the date will be in 30 days
puts "The date in 30 days: \n\n#{Date.today+30}.\n\n"

# Shows what day of the week today's date will fall on next year
puts "Today is #{Date.today}. In #{Date.today.year+1}, #{Date.today.strftime("%B" "%e")} will fall on a #{Date.today.advance(:years => +1).strftime("%A")}.\n\n"

# Shows what day of the week the user's birthday will be on this year
puts "Oh, I'm sorry. I should invite you to play, too.\n\n"
puts "If you tell me your birthday, I'll tell you what day of the week that falls on this year.\n\n"
puts "When is your birthday? Please enter it like this: MM/DD.\n\n"
birthday = Date.parse(gets.chomp)
puts "\nIn #{Date.today.year} your birthday falls on a #{birthday.strftime("%A")}."

# Using the String class, pluralizes a singular word the user enters and shows the singular for a plural word the user enters
puts "\nPlease enter a singular word. Anything but 'campus'!\n\n"
singular_word = gets.chomp
if singular_word == "campus"
  puts "\nWeisenheimer. Here is the INCORRECT plural of your word: #{singular_word.pluralize}.\n\n"
else
  puts "\nHere is the plural of your word: #{singular_word.pluralize}.\n\n"
end

# Using the String class, truncates a phrase the user enters to 20 letters
puts "Please enter a phrase and I'll cut it down to 20 characters.\n\n"
phrase = gets.chomp
puts "\n#{phrase.truncate(20)}\n\n"

# Using the Array class, converts an array of three words to a sentence with one command
puts "If you enter three words I'll turn them into a sentence with one command. Ready?"
words = Array.new

loop do
  puts "\nPlease enter a single word.\n\n"
  words << gets.chomp
  break if words.size == 3
end

puts "\nVoila! \n\n#{words.to_sentence}"

puts "\nThanks for playing!"
