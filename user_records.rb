#Abstraction
class UserRecords
    #implement member data initialization and attr_accessor
	def initialize
		@record = []
	end
	
	#implement
	def build_records(file)
		file.each_line do |line|
			processline = (line.chomp.split(' '))
			temp_user_record = UserHistory.new(processline[0])
			user_page_visit = processline[1]
			temp_user_record.append(user_page_visit)
			merge(temp_user_record)
			
				
		end
		#construct a collection of UserHistory objects from file
	end

	#Encapsulation
	private

		#implement a method
		def merge(temp_user_record)
			if @record.include?(temp_user_record)
				page_visit = temp_user_record.get_pages_visited[0]
				find(temp_user_record).append(page_visit)


			else
				# unique_user.append(unique_page_visit)
				@record << temp_user_record
			end
		end
		#might want to do some post-processing to avoid glitches in the log data
		def clean_data(line)

		end
		#implement the a find method
		def find(temp_user_record)
			index = @record.index(user_record)
			@record[index]
		end

end