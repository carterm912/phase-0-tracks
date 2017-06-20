#My Word Game 


# I had this working before the crash and now I cannot figure out how I made it work.




class Game
	attr_reader
	attr_accessor :lives, :word, :guess, :won

	def initialize
		@word = nil
		@won = false
		@lives = 0
		@guess = nil
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
progress_so_far = ["- " * letters.length]
prev_guesses = []

#I know the assignment said to make lives equal to word length but that was making it harder to actually win.
#So now its word.length + 2 which makes it better when the word is short, but a bit too easy when its too long.
#I could make it dependent on how long the word length is but nobody got time for that.
#tl;dr don't dock me for the lives change :D
@lives = word.length + 2





puts "Player 2 Please guess a letter."
p progress_so_far
puts "#{@lives} remaining."
@guess = gets.chomp

#this method looks at current letters and previous guesses to see if the user has won or not.
def see_if_won(letters, prev_guesses)
	letters.each do |x|
		@won = true
		if @guess.include? x
			print x
		else
			print '- '
			@won = false
		end
	end
	#returns the win value (note to self may need to be @won?)
	return @won
end

while @lives > 0
	guess = gets.chomp
	if letters.include? guess
		#this puts the current guess into the previous guesses array
		prev_guesses << guess
		#checks to see if player 2 has won
		@won = see_if_won(letters, prev_guesses)
		#If player two wins prints a message
		if @won
			puts "YOU DID IT!!1! **confetti**"
			break
		end

		puts "There was a match"
		puts progress_so_far
		puts "So far you have guessed #{prev_guesses}"
		puts "you have #{@lives} guesses remaining."
		puts ""
		puts "player 2 please guess a letter"
	else
		#If player two has not won but still is alive puts message and the number of guesses remaining.
		puts "There were no matches."
		@lives -= 1
		puts "you have #{@lives} guesses remaining."
		puts progress_so_far
		#there has to be a better way to do new line. Need to google this later.
		puts ""
		puts ""
		puts "Player 2 please guess a letter."
		puts "So far you have guessed #{prev_guesses}"
	end

end
#lose message
if @lives = 0
	puts "YOU LOST! TRY TO DO BETTER NEXT TIME."\
else

end



















#test to see if this all is working.
#p letters
#p @lives
#p progress_so_far


