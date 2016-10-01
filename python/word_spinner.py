# Write a function that takes in a string of one or more words, and returns the same string, 
# but with all five or more letter words reversed (Just like the name of this Kata). Strings 
# passed in will consist of only letters and spaces. Spaces will be included only when more 
# than one word is present.



# Examples:

# spinWords( "Hey fellow warriors" ) => returns "Hey wollef sroirraw" 
# spinWords( "This is a test") => returns "This is a test" 
# spinWords( "This is another test" )=> returns "This is rehtona test"

import random

def spinWords(sentence):

	splited_words = sentence.split(" ")
	
	return " ".join((["".join(random.sample(i, len(i))) for i in splited_words])) #used list comprehension to loop through words and shuffle at the same time


def words_reverser(sentence):
	if len(sentence.split(" ")) == 1 and len(sentence) == 2: return sentence
	splited_words = sentence.split(" ")[2:]
	
	reverse = [ i[::-1] for i in splited_words]
	return reverse
	
print spinWords( "Hey fellow warriors" )
print words_reverser( "This is a test") 
print words_reverser( "otw")
print spinWords( "This is another test" )