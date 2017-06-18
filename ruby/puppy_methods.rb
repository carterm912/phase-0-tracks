
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(int)
  	int.times do |i| p "woof!"
  	end
  end
  def roll_over
  
  p "rolls over"
  end
  def dog_years(int)
  	p int * 7

  end

def initialize
 p "Initializing new puppy instance..."

end

end

puppy = Puppy.new

puppy.fetch("rope")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(3)



cat_number = 0
cat_store = []
class Cat

def initialize
p "Cat spawn"


end

def speak

p "meow"
end
end

until cat_number == 50
cat = Cat.new
cat_number += 1
cat_store << cat

end


cat_store.each do |e| e.speak
	


end
