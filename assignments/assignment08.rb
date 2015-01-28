=begin This assignment is due on Jan 29, 2015.

Request input of a number from the user.
Iterate the number of times indicated by the input number
Within the loop, print the number of the iteration
Do this for each of these methods of looping: while, for i in range, loop, until, .times with counter, range with each
All should print from 1 to the number input by the user
=end

#!/usr/bin/ruby
# starts meta loop
loop do

  puts "Please give me a number. To keep things simple, let's make it a whole number.\n And not a big number, or we'll be here all day.\n\n"
  user_number = gets.chomp.to_i
  puts "\nGreat! Let's get loopy!"

  # while
  puts "\nHere is what happens with a WHILE loop:\n\n"
  counter = 1
  while counter <= user_number
    puts counter
    counter += 1
  end

  # for i in range
  puts "\nHere is what happens with a FOR I IN RANGE loop:\n\n"
  for counter in (1..user_number)
    puts counter
  end

  # loop do
  puts "\nNot exciting to look at, is it? Here are the same results but from a LOOP DO this time:\n\n"
  counter = 0
  loop do
    counter += 1
    puts counter
    break if counter >= user_number
  end

  # until
  puts "\nAnd now, an UNTIL loop brings you exactly the same results:\n\n"
  counter = 1
  until counter > user_number
    puts counter
    counter += 1
  end

  # .times with counter
  puts "\nYawn. Now here's what it looks like with a .TIMES loop running under the hood:\n\n"
  counter = 1
  user_number.times do
    puts counter
    counter += 1
  end

  # range with each
  puts "\nDeja vu, am I right? \n\nLast but not least, here's the RANGE WITH EACH version:\n\n"
  (1..user_number).each do |counter|
    puts counter
  end

  # second part of meta loop
  puts "\nWant to see that again with a different number? y/n\n\n"
  answer = gets.chomp

  if answer == "n"
    puts "\nYeah, I think we've covered it. Thanks for playing!"
    break
  end

end
