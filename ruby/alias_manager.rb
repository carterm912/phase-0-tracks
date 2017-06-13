#Pseudocode
#
#
#
#
#
#
#
@vowels = ["a", "e", "i", "o", "u"]
@consonants = ("a".."z").to_a - @vowels

# This method takes a vowel and changes it to the next vowel (forgoing y) and works with edge cases.
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
# This method takes a consonant letter and changes it to the next consonant letter. ALso works with edge cases.
def new_consonant(letter)
	i = 0
	while i < (@consonants.length)
		if @consonants[i] == "z"
			return @consonants[0]
		elsif @consonants[i] == letter
			return @consonants[i+1]
		end
		i += 1
	end
end









p new_vowel('i')
p new_consonant('j')
p new_consonant('z')