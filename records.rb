
#this class contains an array of user page visits: [user_id, [array of user's pages]]
class Records
	#create a placeholder for user's pages
	def initialize
		@user_records = []
	end
	#a method to retrieve the user's page visits
	def user_records
		@user_records
	end
	#this method goes through the log file line by line and adds the data to @user_records
	def build_records(file)
		file.each do |line|
			user_record = clean_data(line)
			merge(user_record) if user_record
		end
	end

	private
	#checks if user's id is already used, if so it appends the new page to his pages, otherwise it creates a new entry in @user_records
	def merge(user_record)
		@user_records.include?(user_record) ? find(user_record).append(user_record.records.first) : @user_records << user_record
	end
	#some data has glitches like empty lines or more than one space between user's id and page name
	def clean_data(line)
		data = line.split(/\s+/)
		if data.size==2
				user = UserRecord.new(data[0])
				user.append(data[1])
				user
		end
	end
	#finds the right user record
	def find(user_record)
		index = @user_records.index(user_record)
		if index
			@user_records[index]
		end
	end

end