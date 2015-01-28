#!/usr/bin/ruby
# Extra super bonus Happy Birthday script -- validates whether it actually IS your birthday
require 'date'
puts "Hi there. What's your name?"
ugly_name = gets.chomp
pretty_name = ugly_name.capitalize
puts "Nice to meet you, #{pretty_name}. Now that we're friends, I feel comfortable asking you:\n When is your birthday? Please enter it in this format: yyyy/mm/dd."
birthdate = Date.parse(gets.chomp)
pretty_birthdate = birthdate.strftime("%A, %B %e, %Y")
# Checks for date that hasn't happened yet
  if birthdate > Date.today
    puts "Um ... you haven't been born yet. But just for fun ... "
# Checks to see if today is your birthday
  elsif (birthdate.day == Date.today.day) && (birthdate.mon == Date.today.mon)
    puts "Hey! You have reason to celebrate today! Happy Birthday, #{pretty_name}!"
  else puts "It's not your birthday, but when it gets close, watch your mailbox!"
  end
# In any case, I'll send you a card
puts "I'll add you to my birthday card list: #{pretty_name} (#{pretty_birthdate})."
