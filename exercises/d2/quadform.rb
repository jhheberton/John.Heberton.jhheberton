puts "Hey bru. Let's compute some quadform"

puts "Give me an A:"

a = gets.strip.to_f

puts "Give me a B:"

b = gets.strip.to_f

puts "Give me a C:"

c = gets.strip.to_f

puts "beep computing boop boop"

if (a == 0) || (b*b-4*a*c < 0)
	puts "There is no solution"
elsif Math.sqrt(b*b-4*a*c) == 0
	x = -b/(2*a)
	puts "x equals #{x}"
else
	x_1 = ((-b + Math.sqrt(b*b-4*a*c))/(2*a))
	x_2 = ((-b - Math.sqrt(b*b-4*a*c))/(2*a))
	puts "x is either #{x_1} or #{x_2}. Goodbye!"
end