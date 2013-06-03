require './user_record'
require './pattern'
require './records'
require './sequences'
#this parser converts a log file into a list of user's consequent three page visits ordered by number of occurances
class Parser
	#initialize a file, a records object, and a sequences object
	def initialize(path="logfile.txt")
		@file = File.open(path)		
	    @records = Records.new
	    @sequences = Sequences.new
	end
	#count sequences and print
	def display
		count_sequences
		@sequences.print
	end

	private
	#the record object is constructed from the @file log file variable, then the sequences are built from the records object
	def count_sequences
		@records.build_records(@file)
		@sequences.count(@records)
	end

end

p = Parser.new("logfile.txt")
p.display
