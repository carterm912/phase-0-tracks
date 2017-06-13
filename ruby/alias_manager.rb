#
@vowels = ["a", "e", "i", "o", "u"]
@consonants = ("a".."z").to_a - @vowels
def new_vowel(letter)
		i = 0
		while i < @vowels.length
			if @vowels[i] = "u"
				return @vowels[0]
			elsif @vowels[i] == letter
				return @vowels[i+1]
			end
			i += 1
		end
	end

p new_vowel('i')