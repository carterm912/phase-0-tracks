# require gems
require 'sqlite3'
#Create a database
db = SQLite3::Database.new("stuff_finder.db")
db.results_as_hash = true

#Create table if it doesn't exist
create_storage_table = <<-SQL
  CREATE TABLE IF NOT EXISTS storage(
  storage_id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  FOREIGN KEY (location_id) REFERENCES location(location_id)
  )
SQL

#create a location table if none exists.
create_location_table = <<-SQL
  CREATE TABLE IF NOT EXISTS location(
  location_id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  )
SQL

#User interface
#Greeting
puts "Hello and welcome to Stuff Finder 2000"
puts "This program was designed to help you, PATRICK McGEE, find where you have stored your stuff."
puts "------------------------------------------------------------"
puts "Please select one of the options and type the command below"
puts "Would you like to: 'add stuff' to your storage list. 'see my stuff' in your storage areas. Or 'quit' to exit?"
#get input
input = gets.chomp

# if commands
