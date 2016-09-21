#You are to create a class Anagram that takes in a string argument.
#it has a method called matches that takes an argument and returns an Array of the strings
#that are anagrams of the word passed into Anagram.new(str), respectively.
#
#For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets" , "banana",
#the program should return a list containing "inlets" because "inlets" is an anagram of "listen".
#It would not return "enlists" in the array because "enlists" has an extra "s" an is not an exact anagram.
#
#Note: You cannot return a candidate that is the same word as the original word.

class Anagram(object):

  def __init__(self, string):
    self.string = string



  def letter_frequency(self, string):
    frequency = {}
    for letter in list(string):
        if frequency.has_key(letter): frequency[letter] += 1
        else: frequency[letter] = 1
        
    return frequency

  def matches(self, *args):
    matches = []
    
    for i in args:
        if self.letter_frequency(i) == self.letter_frequency(self.string):
            matches.append(i)
            
    return matches
      

    




