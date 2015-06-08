while true

	puts "Enter a number:"

	num = gets.strip.to_i
	a = 0
	b = 1
	i = 1

	while i <= num
		x = a
		a = b
		b = x + b
		i = i + 1
	end
	puts a
end