#make a list of patterns sorted by count
class Sequences
	#create an empty array to hold the 3page page visits
	def initialize
		@sequences = []
	end
	#takes an individual user's record and picks out the patterns
	def count(records)
		records.user_records.each do |user_record|
			process_record(user_record)
		end
	end
	#prints the patterns
	def print
		sort_patterns.each do |p|
			puts "count: #{p.count} for sequence: #{p.to_s}"
		end
	end

	private
	#goes through the user's records and either updates cound for existing patterns or creates a new record for new patterns
	def process_record(user_record)
		records = user_record.records
		position = 0
		while position + 2 < records.size
			pattern = Pattern.new(records[position..position+2])
			@sequences.include?(pattern) ? find(pattern).increment : @sequences << pattern
			position+=1
		end
	end
	#retrieves a pattern from sequences
	def find(pattern)
		index = @sequences.index(pattern)
		if index
			@sequences[index]
		end
	end
	#sorts the patterns
	def sort_patterns
		@sequences.sort
	end

end