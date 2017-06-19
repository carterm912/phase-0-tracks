#My Word Game 
#Hire me hasro

class Game
	attr_reader :is_over
	attr_accessor :lives, :word, 

	def initialize
		@word = nil
		@is_over = false
		@lives = 0
	end

end

#driver code
puts "Hello, welcome to the word game!"
puts "This is a game for two players."
puts "Player 1, please input a word(Player 2 NO PEAKING!!!)."
word = gets.chomp
word == @word
letters = []
letters = word.split(//)
progress_made = ["- " * letters.length]
@lives = word.length + 2

#test to see if this all is working.
p letters
p @lives
p progress_made

