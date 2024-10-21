class DataPacket
	require 'json'

	def initialize
		@arr = nil
		@hash_values = nil
	end

	# Setter
	def hash_data=data
		@hash_values = JSON.parse(data)
	end

	# Getter
	def hash_data
		@hash_values
	end

	# Setter
	def array_data=str
		@arr = str.split(",")
	end

	# Getter
	def array_data
		@arr
	end
end

d = DataPacket.new

d.array_data='1,2,3,4,5'

d.hash_data='{"a": 1, "b": 2, "c": {"d": 3, "e": 4}}'

#Output
# ["1", "2", "3", "4", "5"]
# {"a"=>1, "b"=>2, "c"=>{"d"=>3, "e"=>4}}