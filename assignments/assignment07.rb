=begin
Create code for each comment in this gist
Run the code and paste the output into your issue as a comment for this assignment
It should list all the proper class names and all class tests should result in 'true'
Before you run it, can you guess what will happen with the constant code you've created?
=end

# Create a String variable named 'name'
name = "name"

# Create a Date variable named "a_date"
require 'date'
a_date = Date.new(2000,9,26)

# Create an integer variable named "age"
age = 14

# Create an array of names named 'names'
names = ["Kyle", "Tony", "Mark"]

# Create another array, using %w, named 'more_names'
more_names = %w(John Ethan Steve Ryan Tom)

# Create a Hash of names with ages named 'names_and_ages'
names_and_ages = {"Betty" => 6, "Veronica" => 6, "Copycat" => 9}

# Keep this part as a way to test your code
puts name.class
puts a_date.class
puts age.class
puts names.class
puts more_names.class
puts names_and_ages.class

puts name.is_a? String
puts a_date.is_a? Date
puts age.is_a? Fixnum
puts names.is_a? Array
puts more_names.is_a? Array
puts names_and_ages.is_a? Hash

# Create a String literal and output it's class (one line)
puts "I'm a string literal".class

# Create a Fixnum literal and output it's class (one line)
puts 5.class

# Create an Array literal and output it's class (one line)
puts %w(red yellow blue).class

# Create a Hash literal and output it's class (one line). Note to keep from confusing Ruby you'll have to wrap what you are outputting in parenthesis
puts ({"first" => 1, "second" => 2, "third" => 3}).class

# Create a symbol and output it's class
puts :bestsymbolever.class

# Create a String constant with any name you choose
ALLCAPS = "shouting"

# Change the value of that constant
ALLCAPS = "yelling"
# When I run this I'll get a WARNING alerting me that I'd already defined this constant, but it will let me redefine it anyway.

# Output the constant's value to the screen
puts ALLCAPS
# It will output the most recent value: "yelling"
