=begin
This is assignment 21 and is due on Feb 05, 2015.

Write a Person class and some code to use it, following the directions below.
First

Create a Person class with attributes: first name, last name, and birthdate.
First name and last name should not be able to be written to, but should be readable.
Birthdate can be set and read.
Create a public instance method called name that takes the name and sets the first name and last name instance variables. This is so the first name and last name attributes are set by passing in one name.
Create a public instance method called age to calculate and return the user's age.
Now, outside the Person class, ask the user their information and use it to create the Person object.
After asking each user their information, output the user's age.
Next

Create a class variable that will count the number of people that enter in their information. After you output the person's age, also output the number of person they are so far (using the class variable).
Loop to allow another user to enter their information. (exit when user enters \q for name). Create a Person object for each user.
Create a private method called calculateAge. This should contain the functionality you previously had in the age method. The public age method should now call this new private calculateAge method.
=end

#!/usr/bin/ruby
class Person
  attr_reader :first_name
  attr_reader :last_name
  attr_accessor :birthdate

# doesn't work yet
  def name(full_name)
    
    name = full_name.split(' ')
    @first_name = name[0]
    @last_name = name[1]
  end

# doesn't work yet
  def age(birthdate)
    how_old = (Date.today) - Date.parse(gets.chomp)
  end

end

puts "Please enter your name (first and last):"

full_name = gets.chomp

#test
puts @first_name
puts @last_name

puts "Please enter your birthdate (DD/MM/YYYY):"

birthdate = gets.chomp
Person.age(birthdate)

puts "Hello, #{@first_name}. You are #{Person.how_old} years old."
