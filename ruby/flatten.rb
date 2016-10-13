# Rebuild flatten without using flatten. Either solve this using a recursive solution or with using gsub.
#  DO NOT use if conditionals for this answer and try to 
# "game" the test. I will be checking this solution for conditional statements.

class Array

	def new_flatten
		return self.to_s.gsub(/[\[\]]/, '').split(",").map {|e| e.to_i }
	end


end


print [1,2,3,[4,5,[6]]].new_flatten  == [1,2,3,4,5,6]