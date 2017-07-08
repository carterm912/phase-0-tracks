// Scince I already know a bit of js, I know a lot of the built in methods. So I am going to try to use the ones I remember
//Pseudocode
//get the word
//split the word into its seperate characters
// reverse the order of them with reverse
// join the letters back together again

function reverse(word) {
  var reversed = word.split('').reverse().join('');
  return reversed
}

function isItEqual(num) {
	if (num == 1) {
		console.log ("It is equal")
	}
	else {
		console.log ("Nope")
	}
}


reverse(dog)
isItEqual(1)
isItEqual(2)

