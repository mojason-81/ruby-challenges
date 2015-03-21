class Spouse
	def set_name=(name)
		@name = name
	end
	
	def get_name
		return @name
	end
	
	def good_mood
		return "ooolalaa"
	end
	
	def bad_mood
		return "ug, go away"
	end
end

spouse = Spouse.new
puts "What's your spouse's name?"
response = gets.chomp
response = response.capitalize
spouse.set_name=(response)
spouse_name = spouse.get_name
puts "Is your spouse in a good mood or bad mood? Respond with 'good' or 'bad'."
mood = gets.chomp
mood = mood.downcase

if mood == "good"
	puts "#{spouse_name} looks deep in your eyes and says '#{spouse.good_mood}'."
elsif mood == "bad"
	puts "#{spouse_name} looks deep in your eyes and says '#{spouse.bad_mood}'."
end
