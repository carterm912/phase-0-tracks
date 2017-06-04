puts "What is the hamster's name?"
name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
loud = gets.chomp.to_i

puts "What color is the hamster?"
color = gets.chomp

puts "Is the hamster a good candidate for adoption?"
adopt = gets.chomp

puts "How old do you think the hamster is?"
	age = gets.chomp.to_i
	if age == nil
		age = nil
end
puts "The hamster's name is #{name}."
puts "On a scale of 1 to 10, the hamster is a #{loud} on the loudness scale. "
puts "The hamster's fur is #{color}"
puts "Is the hamster a good candidate for adoption? #{adopt}"
puts "We believe the hamster is #{age} years old."