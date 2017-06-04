
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born in?"
birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic = gets.chomp.to_s

puts "Would you like to enroll in the company’s health insurance? y/n"
health = gets.chomp

if 2017 - age == birth
	puts "age is true"
elsif 2017 - age != birth
	puts "age is false"
end	

if garlic == "y"
	like_garlic = true
	puts "likes garlic"
elsif garlic == "n"
	like_garlic = false
	puts "hate garlic"
end

if health == "y"
	insurance = true
	puts "health works"
elsif health == "n"
	insurance = false
	puts "doesnt want health"
end
	