# You are presented with a string or a collection of strings

# Your function should return the length of the string or strings

# For example

# ['Fairy', 'tale'] should return [5, 4]

# 'C-sharp' should return 7

def stringLength(arr) 
	
	return arr.instance_of?(String)?  arr.length : arr.to_a.map { |i| i.length}
end

stringLength(['Fairy', 'tale'])
stringLength('Fairy')

# puts 'true'.instance_of?(String) ? true : false