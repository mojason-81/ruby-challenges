numbers = []
count = 1
while(count < 101)
	numbers << count
	count += 1
end

numbers.each{ |number|
		if(number % 3) == 0 && (number % 5 != 0)
			puts "Fizz"
		elsif(number % 3) != 0 && (number % 5 == 0)
			puts "Buzz"
		elsif(number % 3) == 0 && (number % 5 == 0)
			puts "FizzsBuzz"
		elsif(number % 3) != 0 && (number % 5 != 0)
			puts number
		end
}
