# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".
# => “zoom”

# "enhance".<???>
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

#something with concat I assume.

# " suspects".<???>
# => "the usual suspects"

p "The case of the disappearing last letter"[0..-2]
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p "Elementary,    my   dear        Watson!".tr(" ", "")
# => "Elementary, my dear Watson!"

p "z"[122]
# => 122 
# (What is the significance of the number 122 in relation to the character z?)

p "How many times does the letter 'a' appear in this string?".index("a")
# => 4