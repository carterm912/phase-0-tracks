#module Shout
#	def self.yell_angrily(words)
#		words + "!!!" + " :("
# 	end
#
# 	def self.yell_happily(words)
# 		words + "!" + " :D"
# 	end
#
# end
#
# p Shout.yell_angrily("HIYAAAAA")
# p Shout.yell_happily("hiyaaa")


module Shout
	def yell(words)
		p words + "!!!"
	end
end

class Person
	include Shout
end

class Loudspeaker
	include Shout
end

person = Person.new
person.yell("Hey over here")

loudspeaker = Loudspeaker.new
loudspeaker.yell("Order number 67")