=begin
This is assignment 14 and is due on Feb 02, 2015.

Using the structure of a class as I've laid out in this gist, finishing creating the PigLatin class to translate a word into pig latin
Bonus: modify the app to convert an entire phrase (one word at a time)
Note the pig latin rules in the comment of the skeleton app
=end
#!/usr/bin/ruby
# Note for this exercise, follow these simplified pig latin rules
# If the first letter is a vowel, add "way" to the end
# If the first letter is a consonant, move it to the end and add "ay"

class PigLatin
  # Constant VOWELS is an array of vowels.
  VOWELS =  %w(a e i o u)

  # Defines the pigatize method. It requires text to be passed in.
  def self.pigatize(passed_text)

    # Check to see if the first letter is a vowel, if not it's a consonant
    if PigLatin.starts_with_vowel(passed_text[0])
      # this is placeholder code and should take action based on it starting with a vowel
      pigatized_text = passed_text + "way"
    else
      # this is placeholder code and should take action based on it starting with a consonant
      pigatized_text = passed_text.reverse.chop.reverse + passed_text[0] + "ay"
    end
    return pigatized_text
  end

  # Check to see if the first letter is a vowel
  def self.starts_with_vowel(passed_text)
    VOWELS.include? (passed_text[0]).downcase
  end

  puts "Please enter a word and I will translate to pig latin"
  text = gets.chomp
  puts "Pigatized: #{PigLatin.pigatize(text)}"

  # Bonus assignment starts here

  puts "Now let's try it with an entire phrase. Please enter a phrase."

  phrase = gets.chomp
  break_it_up = phrase.scan(/\w+/).to_a

  break_it_up.each do |word|
  # Uses string interpolation only to add a space between words
    print "#{PigLatin.pigatize(word)} "

  end

end
