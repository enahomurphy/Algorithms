# Compare and return results, based on the argument supplied to the function. 
# Follow through the test to produce the perfect function that accounts for all expectations.

# For strings, return its length.
# For nil return string 'no value'
# For booleans return the boolean
# For integers return a string showing how it compares to hundred e.g. 
# For 67 return 'less than 100' for 4034 return 'more than 100' or equal to 100 as the case may be
# For arrays return the 3rd index, or nil if it doesn't exist

def dataTypes(val) 

	if val.kind_of?(String)
		return val.length 
	elsif val.kind_of?(Array)
		if  val.length >= 3
			return val[2]
		else 
			return nil
		end
	elsif (val.kind_of?(Integer))
		if (val < 100)
			return 'less than 100'
		elsif (val == 100)
			return 'equal to 100'
			
		else (val > 100)
			return 'more than 100'
		end 
	elsif [true, false].include?(val)
		return val
	else
		return 'no value'
	end

end

print dataTypes(true)