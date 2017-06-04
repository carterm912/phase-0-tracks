
puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born in?"
birth = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic = gets.chomp

puts "Would you like to enroll in the company’s health insurance? y/n"
health = gets.chomp

if 2017 - age == birth
	puts "age is true"
elsif 2017 - age != birth
	puts "age is false"

end	
