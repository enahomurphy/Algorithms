# Create a function called  that takes one argument, 
# an Array. You are required to checkif the array passed 
# as an argument is arithmetic, geometric, neither arithmetic 
# nor geometric in progression or if the array is empty.

# For arithmetic progressions, return Arithmetic
# For geometric progressions, return Geometric
# For neither of the above, return -1
# For an empty array, return 0
# Test Results
def aritGeo(arr)

	ans = ''
	count = 0
	return 0 if arr.length == 0
  	ari = arr[1] - arr[0]
  	geo = arr[1] / arr[0]

  	while count <= arr.length do
  		pos = count +1
  		if arr[count] == arr[-1] 
  			break
		elsif (arr[pos] - arr[count] == ari) 
			ans = "Arithmetic"

		elsif (arr[pos] / arr[count] == geo) 
			ans = "Geometric"

		else 
			ans = -1
		end	

		count += 1
  	end

  	return ans
end



arithmetic = [5, 11, 17, 23, 29, 35, 41]
geometric = [2, 6, 18, 54, 162]

print aritGeo(arithmetic)
    

print aritGeo(geometric)
    