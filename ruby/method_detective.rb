# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

p "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

p "zom".insert(2, "o")
# => “zoom”

# "enhance".<???>
# => "    enhance    "

p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

#something with concat I assume couldn't figure this one out.

# " suspects".<???>
# => "the usual suspects"

p "The case of the disappearing last letter"[0..-2]
# => "The case of the disappearing last lette"

p "The mystery of the missing first letter"[1..-1]
# => "he mystery of the missing first letter"

p "Elementary,    My   Dear        Watson!".tr(" ", "").gsub(/(?<=[a-z])(?=[A-Z])/, ' ')
# => "Elementary, my dear Watson!"

p "How many times does the letter 'a' appear in this string?".index("a")
# => 4