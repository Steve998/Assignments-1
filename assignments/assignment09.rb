=begin This assignment is due on Jan 29, 2015.

Read
Review
Play
Write a Ruby script to do the following:

Take the string "Hello World" and split it on whitespace. Show two ways to do this.
=end
puts "Hello World".split

#Use the Peter Piper tongue twister and split it on 'pick'

puts "Peter Piper picked a peck of pickled peppers.".split("pick")

=begin Use gsub only to change the first passage to the second in the fewest amount of commands:

Original: "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

Result: "I have brains in my head. I have feet in my shoes. I can steer myself any direction I choose. I'm on my own. And I know what I know. And I'M the one who'll decide where to go..."
=end

seuss = "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You're on your own. And you know what you know. And YOU are the one who'll decide where to go..."

puts seuss.gsub(/YOU are/, "I'm").gsub(/You(?= )/i, "I").gsub("your", "my").gsub("You're", "I'm")

#You/you to I
#your to my
#You're to I'm
#YOU are to I'M
#gsub(pattern, replacement)


# Write code to determine how many times 'sh' occurs in the following phrase:

sister_phrase = "There once was a man who had a sister, his name was Mr. Fister. Mr. Fister's sister sold sea shells by the sea shore. Mr. Fister didn't sell sea shells, he sold silk sheets. Mr. Fister told his sister that he sold six silk sheets to six shieks. The sister of Mr. Fister said I sold six shells to six shieks too!"

puts "I counted #{sister_phrase.scan(/sh/).length} occurrences of 'sh' in that phrase."


# In the same phrase above, how many times does 'sh' occur when followed by an 'o'? Show the code.

puts "\n Of those, 'sh' is followed by 'o' this many times: #{sister_phrase.scan(/sh(?=o)/).length}."

# Match the word foot but not football in this phrase: "He played football despite having an artificial foot.""

foot_phrase = "He played football despite having an artificial foot."

puts "In \n#{foot_phrase}\n the word 'foot' appears outside the word 'football' this many times: #{foot_phrase.scan(/foot(?!ball)/).length}."

# Match the last sits in a phrase using this phrase: "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

susie_phrase = "I saw Susie sitting in a shoe shine shop. Where she sits she shines, and where she shines she sits."

puts susie_phrase.scan(/sits/).to_a.last
