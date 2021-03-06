# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the list into segments
  #Convert it into a hash
  # items will be the keys and the quatity will be the value.
  # print the list to the console [can you use one of your other methods here?]
# output: Hash

def list_maker(string)
	@grocery_hash = {}
	new_array = string.split(' ')
	
	new_array.each {|x| @grocery_hash[x] = nil} 

	return @grocery_hash





	#quantity = Array.new(new_array.length)
	#p quantity
	
	
	#new_hash = [new_array, quantity].to_h
	#p new_hash
end

grocery_list = list_maker("A B C D E") 
p grocery_list




# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# output:
def add_item(item, quantity)
	@grocery_hash[item] = quantity
end
p add_item("apple", 12)
p @grocery_hash

# Method to remove an item from the list
# input:
# steps:
def remove_item(item)
	@grocery_hash.delete(item)
end
remove_item("apple")

# Method to update the quantity of an item
# input:
# steps:
# output:
def update_quantity(item, num)
	@grocery_hash[item] = num
end

p update_quantity("A", 10)
p @grocery_hash

# Method to print a list and make it look pretty
# input:
# steps:
# output:
def pretty(hash)
	grocery_list
end