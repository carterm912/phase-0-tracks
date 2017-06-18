class Santa
	attr_reader :ethnicity
	attr_accessor :gender, :age ,:reindeer
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

	#setter methods
	def celebrate_ birthday
		@age += 1
	end

	#def gender=(new_gender)
	#	@gender = new_gender
	#end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking.push(reindeer)
		p @reindeer_ranking
	end

	# getter methods
	#def age
	#	@age
	#end

	#def ethnicity
	#	@ethnicity
	#end

end


santa = Santa.new("male", "black")
puts "Age is #{santa.age}" 
puts "Ethnicity is #{santa.ethnicity}"

santa.get_mad_at("Rudolph")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
100.times do |i|
  santas << Santa.new(example_genders[rand(6)], example_ethnicities[rand(6)])
end

p santas
