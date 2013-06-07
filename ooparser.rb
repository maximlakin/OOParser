require './user_history'
require './pattern'
require './user_records'
require './sequences'

class Parser
	#load a file and instantiate two member fields:
	# UserRecords class
	# Sequences class
	def initialize(path="logfile.txt")
		@file = File.open(path)		
	    @records = UserRecords.new
	    @sequences = Sequences.new
	end
	
	def display_visits
		count_sequences
		@sequences.print
	end

	#Encapsulation
	private
	
		def count_sequences
			@records.build_records(@file)
			@sequences.count(@records)
		end

end
def show
	parser = Parser.new("logfile.txt")
	parser.display_visits #render parser
end