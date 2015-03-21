puts "Look out the window and tell me what it looks like out there."
weather = gets.chomp

case weather
	when "sunny"
		puts "Wear shorts and sunglasses...nothing else."
	when "foggy"
		puts "Wear jeans and a long sleeve shirt.  Drive slow."
	when  "cloudy"
		puts "Wear jeans and a long sleeve shirt."
	when "rainy"
		puts "Take an umbrella."
	when "I'm blind"
		puts "How do you find clothes."
	else
		puts "Whatever, dude."
end
