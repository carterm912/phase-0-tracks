# Pseudocode
#make a hash
#p Question one
#	get responce
#	store in hash with data type
#p Question two
#	get responce
#	store in hash with data type
#p Question three
#	get responce
#	store in hash with data type
#p Question four
#	get responce
#	store in hash with data type
#print it all out 

#Interior design form
form = {

}
puts "WELCOME TO THE INTERIOR DESIGN FORM 3000"
puts "What is your favorite color?"
color = gets.chomp.to_sym
form["color"] = color
puts "Do you like mahogany"
answer = gets.chomp
	if answer == 'yes'
		form["mahogany"] = "true"
 	elsif 
		form["mahogany"] = "false"
	end 
puts "What design school did you go to?"
school = gets.chomp.to_sym
form["school"] = school 

p form

puts "Which category would you like to change (color, mahogany, school or 'exit')?"
responce = gets.chomp
		if responce == 'color'
			puts "What would you like to change your favorite color to?"
			new_color = gets.chomp.to_sym
			form["color"] = new_color
		elsif responce == 'mahogany'
			puts "Do you like mahogany?"
			answer = gets.chomp
			if answer == 'yes'
				form["mahogany"] = "true"
 			elsif 
				form["mahogany"] = "false"
			end 
		elsif responce == "school"
			puts "what design school did you go to?"
			school = gets.chomp.to_sym
			form["school"] = school

		elsif responce == 'exit'
	end

p form
