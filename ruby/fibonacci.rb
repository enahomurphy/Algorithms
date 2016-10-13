# The Fibonacci Sequence is the series of numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, ... 
# The next number is found by adding up the two numbers before it. For example: the 3 
# is found by adding the two numbers before it (1+2).

# Let's create a generate method that creates the fibonacci sequence and formats it.

# The generate method takes a number and generates that number of elements in the fibonacci sequence.

# If there was only some way to reduce the complexity of the problem...


class Fibonacci

	def Fibonacci.generate(num)
		ans = []
		a , b =0, 1

		for i in (b..num).to_a
			ans.push(a)
			a,b  = b , a+b
		end

		return ans

	end
end

puts Fibonacci.generate(20)