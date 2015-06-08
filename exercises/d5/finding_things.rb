def index_of(string, letter)
	string = string.to_s
	letter = letter.to_s
	0.upto(string.size) do |i|
		return i if string[i] == letter
	end
	-1
end

def find_by_name(hash_array, string)
	#  Write a method find_by_name, which takes an array of hashes, each of which has 
	#  the property :name, and a string and finds the first one that has that name.
	
end