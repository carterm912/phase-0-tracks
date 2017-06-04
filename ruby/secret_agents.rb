puts "007 would you like to encrypt or decrypt a password?"
response = gets.chomp
puts "What is the password?"
secret_password = gets.chomp

if response == "encrypt"

def encrypt(secret_password)

index = 0
while index < secret_password.length
  secret_password[index] = secret_password[index].next!
  index += 1
end

puts secret_password

end
encrypt(secret_password)

#encrypt("abc")
#encrypt("zed")

elsif response == "decrypt"

def decrypt(secret_password)

alphabet = "abcdefghijklmnopqrstuvwxyz"
sp_length = secret_password.length * -1
timer = secret_password.length

until timer == 0

letter = secret_password[sp_length]
position = alphabet.index(letter)

print alphabet[position -1]

timer = timer - 1
sp_length += 1

end


end
decrypt(secret_password)

else
	puts "did not compute"
end


#decrypt("bcd")
#decrypt("afe")





