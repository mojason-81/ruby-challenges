class Bookmarks
	def set_address=(address)
		@address = address
	end
	
	def get_address
		return @address
	end
	
	def set_type=(type)
		@type = type
	end
	
	def get_type
		return @type
	end
	
	def set_username= (username)
		@username = username
	end
	
	def get_username
		return @username
	end
	
	def set_password= (password)
		@password = password
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
