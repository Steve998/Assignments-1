=begin
This assignment is due on Jan 28, 2015.

Create a Ruby script to ask the user for their name and then wish them a Happy Birthday by name
Add some comments to your code
Put this code in a gist and paste the link from the gist in a comment of this issue
Bonus

Add another prompt for birthdate
Show the birth date in parenthesis after the greeting
Note: user must enter date in like: 2014/09/22 or 2014-09-22
Change the output formatting to: Friday, April 1, 1974
Capitalize the user's name
=end

#!/usr/bin/ruby
# Basic Happy Birthday script
puts "Hi there. What's your name?"
# This gets the response and saves it as variable "name."
name = gets.chomp
# This puts the response into the birthday greeting through string interpolation.
puts "Happy birthday, #{name}!"
answer = gets.chomp

#!/usr/bin/ruby
# Bonus Happy Birthday script
require 'date'
puts "Hi there. What's your name?"
ugly_name = gets.chomp
pretty_name = ugly_name.capitalize
puts "Nice to meet you, #{pretty_name}. Now that we're friends, I feel comfortable asking you:\n When is your birthday? Please enter it in this format: yyyy/mm/dd."
birthdate = Date.parse(gets.chomp)
pretty_birthdate = birthdate.strftime("%A, %B %e, %Y")

puts "I'll add you to my birthday card list: #{pretty_name} (#{pretty_birthdate})."
