#represents a user's history
class UserRecord
	#set up a user id and records to represent a user's browsing history
	def initialize(id)
		@user_id = id
		@records = []
	end
	#adds a record to UserRecord
	def append(record)
		@records << record
	end
	#displayes the id
	def user_id
		@user_id
	end
	#display records
	def records
		@records
	end
	#overwrite the == method to make UserRecord's findable in arrays
	def ==(object)
		if object.class != self.class
			false
		elsif object.user_id == @user_id
			true
		else
			false
		end
	end
end