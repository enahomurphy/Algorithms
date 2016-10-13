# Difference Of Squares

# Find the difference between the sum of the squares and the square of the sums of the first N natural numbers.

# The sum of the squares of the first ten natural numbers is,

# 1**2 + 2**2 + ... + 10**2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)**2 = 55**2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.

class Squares


	def initialize(num)
		@num = num

	end

	def sum_of_squares
		a = 0
		(1..@num).each { |e| a += e**2 }
		
		return  a
	end

	def square_of_sums
		b = 0
		(1..@num).each { |e| b += e  }
		
		return (b**2) 
	end

	def difference
		return self.square_of_sums - self.sum_of_squares
	end
end


def prime(n)

	
	if (n < 2 ) || (n % 2 == 0)
		return false
	end
	count = 3
	while count < n
		if n % count == 3
			return false
		end
		count += 3
	end
	
	return true
end

puts prime(22)