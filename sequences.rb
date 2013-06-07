#Abstraction
class Sequences
	#implement member data initialization and attr_accessor
	def initialize

	end
	#implement the method for getting Pattern objects to 
	def count

	end

	#prints the patterns
	def print
		sort_patterns.each do |p|
			puts "count: #{p.count} for sequence: #{p.to_s} {p.user_ids.each{|id| puts id}}"
		end
	end

	#encapsulation
	private

		#creates a 
		def process_record(user_history)
			#create a collection of Pattern objects from user_history
		end

		#implement the a find method
		def find(pattern)

		end

		#implement a method for sorting patterns
		def sort_patterns

		end

end