# Have a function factorial(number) take the number parameter been passed and return the factorial of it.

# For example: if number is 4, it should return (4 * 3 * 2 * 1) which is 24.

def factorial(num)

	return num <= 1 ? num : num * factorial(num - 1)

end

puts factorial(4)
puts factorial(10)
puts factorial(4)
