=begin This is assignment 16 and is due on Feb 02, 2015.

Pick a screenplay from this list, http://www.simplyscripts.com/ (in text)
Read in the screenplay and write it to a local file
=end

#!/usr/bin/ruby

# Opens library.
require 'net/http'

# Sets var uri to the web address I want.
uri = URI('http://www.scifiscripts.com/scripts/superman_I_shoot.txt')
# Sets var script_from_net as recipient of passed-in uri.
script_from_net = Net::HTTP.get(uri)
# Sets up the destination file on my laptop.
my_copy = File.new('assignment16_script.txt', 'w')
# Pastes results of passed-in uri into my local file.
my_copy.write(script_from_net)
#Closes file.
my_copy.close
# Lets the user know it's done.
puts "Done! Take a peek at assignment16_script.txt."
