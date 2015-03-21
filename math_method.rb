def add_two_numbers(num1, num2)
	puts "The sum of your two numbers is #{num1 + num2}."
end

puts "Give me a number."
num1 = gets.chomp.to_i
puts "Give me another number."
num2 = gets.chomp.to_i
add_two_numbers(num1, num2)
