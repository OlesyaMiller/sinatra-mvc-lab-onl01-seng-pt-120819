require 'pry'

class PigLatinizer 

        #you could create a method that uses regex 
        #to check if an individual letter is a consonant, 
        #and then call on it 3 times when looking at individual words
    def piglatinize(phrase)
        new_word_consonant = ['a', 'y']
        new_word_vowel = ['w', 'a', 'y']
        # scanned_word_for_consonants = word.scan(/[bcdfghjklmnpqrstvwxyz]/)
        # scanned_word_for_vowels = word.scan(/[aeoui]/)
        phrase.split(" ").map do |word|
            if word.split("")[0] == word.scan(/[bcdfghjklmnpqrstvwxyz]/)[0] && word.split("")[1] != word.scan(/[bcdfghjklmnpqrstvwxyz]/)[1]
                new_word_consonant.unshift(word.scan(/[bcdfghjklmnpqrstvwxyz]/)[0])
                word = word.split("")[1..-1]  
                word << new_word_consonant
                word.flatten.join
            elsif word.split("")[0] == word.scan(/[bcdfghjklmnpqrstvwxyz]/)[0] && word.split("")[1] == word.scan(/[bcdfghjklmnpqrstvwxyz]/)[1] && word.split("")[2] != word.scan(/[bcdfghjklmnpqrstvwxyz]/)[2]
                new_word_consonant.unshift(word.scan(/[bcdfghjklmnpqrstvwxyz]/)[1])
                new_word_consonant.unshift(word.scan(/[bcdfghjklmnpqrstvwxyz]/)[0])
                word = word.split("")[2..-1]
                word << new_word_consonant
                word.flatten.join
            elsif word.split("")[0] == word.scan(/[aeoui]/)[0]
                word = word.split("") 
                binding.pry 
                word << new_word_vowel
                word.flatten.join
            end
        end.join(" ")
    end

end