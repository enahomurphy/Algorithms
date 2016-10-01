# Implement the function unique_in_order which takes as argument a sequence and returns a list of items
#  without any elements with the same value next to each other and preserving the original order of elements.

# For example: 

# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
# unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique(iterable):
   	unique = []
   	[unique.append(i) for i in list(iterable) if i not in unique]
   	return unique
    	


def unique_in_order(iterable):
	
	listed = list(iterable)
	unique = []
	count = 0
	for i in listed:
		if (len(unique) == 0) or ( i != unique[len(unique) - 1]):
			unique.append(i)
		count +=1
	return unique







print unique_in_order('AAAABBBCCDAABBB') 
print unique_in_order('ABBCcAD')         
print unique_in_order([1,2,2,3,3])    
print unique_in_order(["A", "A"])    

