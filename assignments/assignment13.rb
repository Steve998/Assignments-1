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

  puts "Let's play a game. I'm thinking of a number between 1 and ... \n\nActually, I'll let you choose the range. Please choose the second number. \n\nRemember, if it's really big, you'll be guessing for a long time!\n\n"

  top_of_range = gets.chomp.to_i

  puts "\n\nThanks! Okay, I'm thinking of a number between (and including) 1 and #{top_of_range}. Can you guess it?\n\n"

  # Generates a random integer between (and including) 1 and whatever number the user chose.
  my_number = rand(1..top_of_range)

  # Sets counter to 0.
  how_many = 0

  # Starts guessing
  guess = gets.chomp.to_i

    loop do
    how_many += 1

    # Describes three levels of accuracy and displays messages to the user.
    if how_many == 1
      puts "Wowsa! You got it on the first try! \n\nYou should pay the lottery!"
    elsif how_many == my_number
      puts "At last! You finally got it ... after eliminating all other possibilities. :) \n\nYou got it in #{how_many} out of #{how_many} guesses."
    else puts "That's it! Nice job! You got it in #{how_many} guesses."
    end

  # Need a way to check if guess is outside the range
  #  else puts "Sorry, not quite."
    if guess >= my_number
      puts "Too high. Please guess again."
    else puts "Too low. Please guess again."

    end

    break if guess == my_number

  puts "Want to play again? y/n"
  again = gets.chomp

    if again == "n"
      break
    end

  end

end
