=begin This assignment is due on Jan 29, 2015.

Take a string from the user, reverse it, remove the last character and reverse it again (no shortcuts)
Be sure if the user enters whitespace on either side of the input, that you remove it first
For the original text input by the user, count how many words (as separated by spaces) and print this count.
=end

#!/usr/bin/ruby
# Added a loop for fun
loop do

  puts "Please enter a phrase."
  phrase = gets.strip
  wonky_phrase = phrase.reverse.chop.reverse
  # At first I used #phrase.scan(/ /).length+1 to calculate the number of spaces and add one to get the number of words. On the drive home it dawned on me that  I'd probably overlooked a way to count the words directly. Indeed! split.length
  puts "You entered #{phrase.split.length} words. \nCheck out how I customized your phrase: \n#{wonky_phrase}"

  puts "\nWant to do that again? y/n\n\n"
  answer = gets.chomp
  if answer == "n"
    puts "\nThanks for playing!"
    break
  end

end
