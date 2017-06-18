class Santa

	def initialize(gender, ethnicity)
		p "initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@age = 0
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak
		p "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		p "That was a good #{cookie_type}"
	end

	# getter methods
	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end


santa = Santa.new("male", "black")
puts "Age is #{santa.age}" 
puts "Ethnicity is #{santa.ethnicity}"

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i|
  santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
end


