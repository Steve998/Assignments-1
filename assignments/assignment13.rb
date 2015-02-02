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
  puts "\n\nActually, I'll let you choose the range. Please choose the second number."
  puts "\n\nRemember, if it's really big, you'll be guessing for a long time!\n\n"

  top_of_range = gets.chomp.to_i
  # Generates a random integer between (and including) 1 and whatever number the user chose.
  my_number = rand(1..top_of_range)
  # Sets counter to 0.
  how_many = 0

  puts "\n\nThanks! Okay, I'm thinking of a number between (and including) 1 and #{top_of_range}. Can you guess it?\n\n"

  guess = 0
  until guess == my_number do

    # Starts guessing
    guess = gets.chomp.to_i
    how_many += 1

    # Message for user who doesn't follow game rules
    if guess > top_of_range || guess < 1
      puts "Remember, you set the range of 1 to #{top_of_range}."
      puts "Please guess a number within that range."
    end

    # Describes levels of accuracy and displays messages to the user.
    if guess == my_number && how_many == 1
      puts "Wowsa! You got it on the first try! \n\nYou should pay the lottery!"
    elsif guess == my_number && how_many == my_number
      puts "At last! You finally got it ... after eliminating all other possibilities. :)"
      puts "\n\nYou got it in #{how_many} out of #{how_many} guesses."
    elsif guess == my_number
      puts "That's it! Nice job! You got it in #{how_many} guesses."
      # Prevents "Too high"/"Too low" message from displaying when user guesses
      # outside the range.
      # Brian -- is there another way to accomplish this?
    elsif guess > my_number && (guess > 1 && guess < top_of_range)
      puts "Too high. Please guess again."
    else puts "Too low. Please guess again."
    end

  end

  puts "Want to play again? y/n"
  again = gets.chomp

    if again == "n"
      break
    end

end
