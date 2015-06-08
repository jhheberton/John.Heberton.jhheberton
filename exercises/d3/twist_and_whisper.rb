def twist(sentence)
	sentence = sentence.split("")
	sentence = sentence.shuffle
	sentence = sentence.join
	puts sentence
end

twist("I am tired")

def invert(hash)
	new_hash = {}
	hash.each do |key, value|
		new_hash[value] = key
	end
	new_hash
end

dishes = { "blt" => "sandwich", "pizza" => "italian", "taco" => "Mexican" }

invert(dishes)