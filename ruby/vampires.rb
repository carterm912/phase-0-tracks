puts "How many employees will be processed?"
total_employees = gets.chomp.to_i


until total_employees == 0
 	

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

repeat = true

until repeat == false
	
puts "Please list any allergies, one at at time. Type 'done' when finished. "
allergies = gets.chomp

if allergies == "done"
	repeat = false
	
elsif allergies == "sunshine"
	allergy_check = true
	repeat = false
else
	repeat = true
end

end

if 2017 - age == birth
	puts "age is true"
	correct_age = true
elsif 2017 - age != birth
	puts "age is false"
	correct_age = false
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

if name == "Drake Cula"
	filthy_liar = true
	puts "liar works"
elsif name == "Tu Fang"
	filthy_liar = true
	puts "liar works"
else
	filthy_liar = false
end	
	

case
when allergy_check
	puts "Probably a vampire!"
when correct_age && (like_garlic || insurance) && !filthy_liar && !allergy_check
	puts "Probably not a vampire."
when !correct_age && (like_garlic || insurance) && !filthy_liar && !allergy_check
	puts "Probably a vampire."
when !correct_age && !like_garlic && !insurance && !filthy_liar && !allergy_check
	puts "Almost certainly a vampire!" 
when filthy_liar
	puts "Definitely a vampire!"
else
	puts "Results inconclusive."
end

total_employees -= 1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
