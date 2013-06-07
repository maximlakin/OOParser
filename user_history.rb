class UserHistory
	#implement member data initialization and attr_accessor
	def initialize(id)
		@id = id
		@pages_visited = []
	end

	def get_id
		return @id
	end 

	def get_pages_visited
		return @pages_visited
	end

	#adds a history to UserRecord
	def append(page)
		@pages_visited << page
	end

	#return an collection of all 3 page visits contained in a user's history
	def the_magic_give_three_method

	end

	#polymorphism
	#overwrite == to allow arrays to use .include? on instances of UserHistory objects
	def ==(object)
		if object.get_id == @id
			true
		else
			false
		end
	end
end

# user1 = UserHistory.new(234)
# user2 = UserHistory.new(84)