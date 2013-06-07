#pattern represents a 3 page visit and has a count to keep track of the number of occurrances
class Pattern
	#implement member data initialization and attr_accessor
	def initialize(pattern)
		#
		#
		@user_ids = []
	end
	#increments the count by one
	def increment

	end
	#implement, or better yet replace with a good attr_accessor
	def get_count

	end

	

	#polymorphism
	#converts the pattern array to string
	def to_s

	end

	#polymorphism
	#overwrite == to make pattern findable in arrays
	def ==(object)

	end
	#polymorphism
	#overwrite the comparison operator to make arrays of patterns sortable
	def <=>(object)

	end
end