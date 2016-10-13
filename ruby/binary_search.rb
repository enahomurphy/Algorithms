class Array

	def toTwenty
		return (1..20).to_a
	end

	def toForty
		return (1..20).to_a.map {|a| a * 2}
	end

	def toOneThousand
		return (1..100).to_a.map {|a| a * 10}
	end

	def search(x)
		result = {:index => -1, :count => 0, :length => 0}
		result[:length] = self.length

		low = 0
		high = result[:length] - 1


		while (high > low)  do
			mid = low + (high - low) / 2
			puts high
			if self[high] == x
				result[:index] = high
				break
			end

			if self[low] == x
				result[:index] = low
				break
			end

			if self[mid] == x
				result[:index] = mid
				break
			end
			if self[mid] > x
				high = mid - 1
			end	
			if self[mid] < x
				low = mid + 1
			 	 
			end 

			 result[:count] += 1
		end

		return result
	end
end



toOneThousand = Array.new.toOneThousand
print toOneThousand.search(40)

toTwenty = Array.new.toTwenty
print toTwenty.se

