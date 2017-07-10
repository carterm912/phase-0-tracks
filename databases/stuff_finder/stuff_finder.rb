#Stuff finder 2000
# designed to help my father keep track of where all his stuff is. 
# You have no idea how useful this will be.

# require gems
require 'sqlite3'
#Create a database
$db = SQLite3::Database.new("stuff_finder.db")
$db.results_as_hash = true

#Create table if it doesn't exist
create_storage_table = <<-SQL
  CREATE TABLE IF NOT EXISTS storage(
  storage_id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  quantity INT,
  location_id INT,
  FOREIGN KEY (location_id) REFERENCES locations(id)
  )
SQL


#create a location table if none exists.
#ended up not really using this.
create_locations_table = <<-SQL
  CREATE TABLE IF NOT EXISTS locations(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
  )
SQL

$db.execute(create_storage_table)
$db.execute(create_locations_table)


def new_location(name)
	$db.execute("INSERT INTO locations (name) VALUES (?)", [name])
end

def new_stuff(name, quantity, location_id)
	$db.execute("INSERT INTO storage (name, quantity, location_id) VALUES (?, ?, ?)", [name, quantity, location_id])
end
#sample table maker
# new_location("home")
# new_location("storage")
# new_location("beach house")
# new_stuff("chair", 2, 1)
# new_stuff("table", 1, 2)
# new_stuff("surf board", 7, 3)
# new_stuff("skis", 3, 2)
# new_stuff("umbrella", 2, 3)
# new_stuff("bike", 2, 1)


#driver code
#Greeting and UI
puts "Hello and welcome to Stuff Finder 2000"
puts "This program was designed to help you, PATRICK McGEE, find where you have stored your stuff."
loop do
	puts "------------------------------------------------------------"
	puts "Please select one of the options and type the command below"
	puts "Would you like to: 'add stuff' to your storage list. 'see my stuff' in your storage areas. Or 'quit' to exit?"
	#get input
	input = gets.chomp

	# if commands
	if input == "add stuff"
		puts "What is the name of the item you would like to add?"
		name = gets.chomp

		puts "How many of #{name} do you wish to store?"
		quantity = gets.chomp.to_i

		puts "Where would you like to store it? Type '1' for home, '2' for the storage unit, or '3' for the beach house."
		location_id = gets.chomp.to_i
		new_stuff(name, quantity, location_id)



	elsif input == "see my stuff"
		puts "Please select 'all locations' or 'one location'."
		location_input = gets.chomp
		if location_input == "all locations"
			puts "look at all the things you own!"
			stuff = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=1")
				stuff.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at home."
				end
				stuff2 = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=2")
				stuff2.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at the storage unit."
				end
				stuff3 = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=3")
				stuff3.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at the beach house."
				end

		elsif location_input == "one location"
			puts "Please select a location. Type 'home','storage unit' or, 'beach house'"
			new_input = gets.chomp
			if new_input == "home"
				stuff = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=1")
				stuff.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at home."
				end
			elsif new_input == "storage unit"
				stuff = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=2")
				stuff.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at the storage unit."
				end
			elsif new_input == "beach house"
				stuff = $db.execute("SELECT storage.name, storage.quantity FROM storage WHERE location_id=3")
				stuff.each do |stuff|
					puts "You have #{stuff['quantity']} #{stuff['name']}(s) at the beach house."
				end
			end

		else
			puts "Sorry. I did not understand that command."
		end

	elsif input == "quit"
		puts "Thank you for using Stuff Finder 2000!"
		break
	else 
		puts "Sorry. I did not understand that command."
	end
end	