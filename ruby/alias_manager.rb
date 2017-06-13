#Pseudocode
#make a method that changes vowels
#make a method that changes consonants
#make a method that checks for vowels or consonants and calls other two methods
#make a method that both downcases original name but breaks it into first and last (use split with a space " ")
# => then switch first and last.
# => then do letter shift
# => put letters back together into new name

@vowels = ["a", "e", "i", "o", "u"]
@consonants = ("a".."z").to_a - @vowels

# This method takes a vowel and changes it to the next vowel (forgoing y) and works with edge cases.
def new_vowel(letter)
		i = 0
		while i < @vowels.length
			if @vowels[i] == "u"
				return @vowels[0]
			elsif @vowels[i] == letter
				return @vowels[i + 1]
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
			return @consonants[i + 1]
		end
		i += 1
	end
end

# This method will check if the character sent to it is a vowel or consonant and then call the corosponding method
def alias_letter_finder(character)
	if @consonants.include?(character)
		new_consonant(character)
	elsif @vowels.include?(character)
		new_vowel(character)
	end
end

#This method will break a name into first and last, then break that into characters to change and then pring the new name.
def code_name(name)
	original_name = name.downcase.split(" ")
		first = original_name[0]
		last = original_name[1]

	new_first = last.chars.map do |i|
		alias_letter_finder(i)
	end

	new_last = first.chars.map do |i|
		alias_letter_finder(i)
	end

	new_code_name = new_first.join + " " + new_last.join
	puts new_code_name

end




# these were my test calls

#p new_vowel('a')
#p new_vowel("u")
#p new_vowel("e")
#p new_consonant('j')
#p new_consonant('z')
#p alias_letter_finder('f')
#p alias_letter_finder('o')
code_name("Felicia Torres")