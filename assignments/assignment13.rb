=begin
This is assignment 13 and is due on Feb 02, 2015.

Create a guessing game
The user must guess the number chosen by the app
Provide feedback to the user as to if their guess is lower or higher than the number
Count the number of guesses and output at the end
=end

#!/usr/bin/ruby
# Adds a loop just for fun so you can play over and over again.
loop do

  puts "Let's play a game. I'm thinking of a number between 1 and ..."
  puts "\nActually, I'll let you choose the range. Please choose the second number."
  puts "\nRemember, if it's really big, you'll be guessing for a long time!\n\n"

  top_of_range = gets.chomp.to_i
  # Generates a random integer between (and including) 1 and whatever number
  # the user chose.
  my_number = rand(1..top_of_range)
  # Sets counter to 0.
  how_many = 0

  # This is a failed idea. Keeping it here so I can think about it and retry.
  #def self.valid
  #between?(1, top_of_range) == true
  #end

  puts "\nThanks! Okay, I'm thinking of a number between (and including) 1 and #{top_of_range}. Can you guess it?\n\n"

  guess = 0
  until guess == my_number do

    # Starts guessing.
    guess = gets.chomp.to_i
    how_many += 1

    # Describes levels of accuracy and displays messages to the user.
    if guess > top_of_range || guess < 1
      puts "\nRemember, you set the range of 1 to #{top_of_range}."
      puts "\n(You ignored the rules so I'm penalizing you by counting this as a guess.)"
      puts "\nPlease guess a number within that range.\n\n"
    elsif guess == my_number && how_many == 1
      puts "\nWowsa! You got it on the first try!"
      puts "\nYou should play the lottery!"
    elsif guess == my_number
      puts "\nThat's it! Nice job! You got it in #{how_many} guesses."
    elsif guess > my_number
      puts "\nToo high. Please guess again.\n\n"
    else guess < my_number
      puts "\nToo low. Please guess again.\n\n"

    end
  end

  puts "\nWant to play again? y/n\n\n"
  again = gets.chomp

    if again == "n"
      puts "Okay, maybe another time. Bye!"
      break
    end

end
