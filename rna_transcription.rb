class Complement
	VERSION = 2
	def self.of_dna(sequence)
		newSequence = []
		sequence.split(//).each do |acid|
			if acid == "A"
				newSequence << "U"
			elsif acid == "T"
				newSequence << "A"
			elsif acid == "G"
				newSequence << "C"
			elsif acid == "C"
				newSequence << "G"
			else
				raise ArgumentError
			end
		end
		newSequence.join
	end

	def self.of_rna(sequence)
		newSequence = []
		sequence.split(//).each do |acid|
			if acid == "A"
				newSequence << "T"
			elsif acid == "U"
				newSequence << "A"
			elsif acid == "G"
				newSequence << "C"
			elsif acid == "C"
				newSequence << "G"
			else
				raise ArgumentError
			end
		end
		newSequence.join
	end	
end
