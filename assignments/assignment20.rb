=begin
This is assignment 19 and is due on Feb 04, 2015.

Extend Ruby's String class to have a "pigatize" method that will turn any string into pig latin.

Should use the same code you wrote before, but now you are extending the String class and putting the functionality in there.
=end

#!/usr/bin/ruby

# This extends the String class to include the constant VOWELS.
String::VOWELS = %w(a e i o u)

# This adds "pigatize" method to the String class.
class String

    def pigatize(passed_text)

      # Check to see if the first letter is a vowel, if not it's a consonant
      if passed_text.starts_with_vowel(passed_text[0])
        # Action if word starts with a vowel
        pigatized_text = passed_text + "way"
      else
        # Action if word starts with a consonant
        pigatized_text = passed_text.reverse.chop.reverse + passed_text[0] + "ay"
      end
      return pigatized_text
    end

    # Check to see if the first letter is a vowel
    def starts_with_vowel(passed_text)
      self.VOWELS.include? (passed_text[0]).downcase
    end

end
