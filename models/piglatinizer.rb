class PigLatinizer 

    def consonant?(letter)
        !letter.match(/[aeouiAEOUI]/)
    end

    def piglatinize(phrase)
        phrase.split(" ").map do |word|
            if self.consonant?(word[0]) && self.consonant?(word[1]) && self.consonant?(word[2])
                word.slice(3..-1) + word.slice(0,3) + "ay"
            elsif self.consonant?(word[0]) && self.consonant?(word[1])
                word.slice(2..-1) + word.slice(0,2) + "ay"
            elsif self.consonant?(word[0]) 
                word.slice(1..-1) + word.slice(0,1) + "ay"
            else
                word + "way"
            end
        end.join(" ")
    end

end