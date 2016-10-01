
# Write a method called scoreHand that determines the score of a hand in the card game Blackjack (aka 21). You don't
# need to write a class.

# This method takes one parameter which is an array of strings that represent each card in the hand. Each card will be

#  one of the following strings: "2" to "10", "J", "Q", "K", "A"

# It returns a number which is the score of the hand. Return the highest score of the cards that is less than or equal

# to 21. If there is no possible score less than or equal to 21 return the smallest score more than 21.

# Scoring rules: In Blackjack number cards count as their face value (2 through 10). Jack, Queen and King count as 10.
# An Ace can be counted as either 1 or 11. Handling the Aces is the tricky part of this lab. Good luck!

# Examples:

# scoreHand(["A"]); //=> 11
# scoreHand(["A", "J"]); //=> 21
# scoreHand(["A", "10", "A"]); //=> 12
# scoreHand(["5", "3", "7"]); //=> 15
# scoreHand(["5", "4", "3", "2", "A", "K"]); //=> 25

def  scoreHand(hand)
	score = 0
	ace = 1
	ace = 11 if hand[0] == 'A' && hand.select {|a| a == 'A'}.length == 1

	for i in hand do
		if i == "A"
			score += ace
		elsif ["J", "K", "Q"].include?(i)
			score += 10
		else
			score += i.to_i
		end
	end
	return score
end


puts scoreHand(["A"]); #=> 11
puts scoreHand(["A", "J"]);# //=> 21
puts scoreHand(["A", "10", "A"]);# //=> 12
puts scoreHand(["5", "3", "7"]); #//=> 15
puts scoreHand(["5", "4", "3", "2", "A", "K"]); #//=> 25
