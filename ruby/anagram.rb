#You are to create a class Anagram that takes in a string argument.
#it has a method called matches that takes an argument and returns an Array of the strings
#that are anagrams of the word passed into Anagram.new(str), respectively.
#
#For example, given the word "listen" and a list of candidates like "enlists", "google", "inlets" , "banana",
#the program should return a list containing "inlets" because "inlets" is an anagram of "listen".
#It would not return "enlists" in the array because "enlists" has an extra "s" an is not an exact anagram.
#
#Note: You cannot return a candidate that is the same word as the original word.

class Anagram
  
    def initialize(string)
        @string = string
    end
    
    #returns the count of each letters in a string
    #eg letter_frequency("apple") = {a: 1, p: 2, l:1 e: 1}
    #
    #
    #@params string
    #@return {dict}
    
    def letter_frequency(string)
        frequency = Hash.new
        string.downcase.split('').each {|e| frequency.has_key?(e) ? frequency[e] += 1 : frequency[e] =1 }
        
        return frequency
    end
    
    #takes in unknown numbers of string parameters and returns
    #an array of anagrams
    #
    #@params {string}
    #@return [Array]
    def matches(*args)
        ans = []
        args.each do  |word|
            ans.push(word) if letter_frequency(word) == letter_frequency(@string) && word.downcase != @string.downcase
        end
	
        return ans
    end

end
anagram =  Anagram.new("Orchestra");

print anagram.matches('cashregister', 'Carthorse', 'radishes');

