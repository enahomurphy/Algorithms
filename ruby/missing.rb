# You are presented with two arrays, all containing positive integers.
#  One of the arrays will have one extra number, see below

# [1,2,3] and [1,2,3,4] should return 4 [4,66,7] 
#  [66,77,7,4] should return 77

def findMissing(a, b)
	ans = 0
	b.each { |c| ans += c if a.indclude?(c)   }
	return ans
end


# def findMissing(arr1, arr2):
# 	ans = 0
# 	for i in arr2:
# 		if i not in arr1:
# 			ans += i 
			
# 	return ans
puts findMissing([1,2], [1,2,3])