#pattern represents a 3 page visit and has a count to keep track of the number of occurrances
class Pattern
	#initialize a pattern object with a default count of 1
	def initialize(pattern)
		@count = 1
		@pattern = pattern
	end
	#increments the count by one
	def increment
		@count+=1
	end
	#retrieves count
	def count
		@count
	end
	#converts the pattern array to string
	def to_s
		@pattern.join(" ")
	end
	#overwrite == to make pattern findable in arrays
	def ==(object)
		if object.class != self.class
			false
		elsif object.to_s == to_s
			true
		else
			false
		end
	end
	#overwrite the comparison operator to make arrays of patterns sortable
	def <=>(object)
		object.count<=>@count
	end
end