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
  
      def initialize(test)
            @test = test
      end
                
                
      def matches(*args)
            if args.length  == 0
                  return []
            end

            for words in args
                  words
            end
            
            
      end
  
  
end

anagram =  Anagram.new("hello world");

puts anagram.matches("enlists", "google", "inlets" , "banana" );