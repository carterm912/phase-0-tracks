<<<<<<< HEAD

=======
11:13 AM
>>>>>>> 1baa5784b3089bb11c7c7558d7c3ba9f53886049
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
<<<<<<< HEAD

end

puppy = Puppy.new

puppy.fetch("rope")
puppy.speak(5)
puppy.roll_over
puppy.dog_years(3)


=======
>>>>>>> 1baa5784b3089bb11c7c7558d7c3ba9f53886049

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

<<<<<<< HEAD
=======
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

>>>>>>> 1baa5784b3089bb11c7c7558d7c3ba9f53886049
until cat_number == 50
cat = Cat.new
cat_number += 1
cat_store << cat

end


cat_store.each do |e| e.speak
	


end
