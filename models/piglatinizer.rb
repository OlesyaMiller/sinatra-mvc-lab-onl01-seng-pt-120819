class PigLatinizer 

    def consonant?(letter)
        !letter.match(/[aeouiAEOUI]/)
    end

    def piglatinize(phrase)
        phrase.split(" ").map do |word|
            if consonant?(word[0]) && consonant?(word[1]) && consonant?(word[2])
                word.slice(3..-1) + word.slice(0,3) + "ay"
            elsif consonant?(word[0]) && consonant?(word[1])
                word.slice(2..-1) + word.slice(0,2) + "ay"
            elsif consonant?(word[0]) 
                word.slice(1..-1) + word.slice(0,1) + "ay"
            else
                word + "way"
            end
        end.join(" ")
    end

end