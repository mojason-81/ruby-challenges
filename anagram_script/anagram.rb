def find_anagram(str)
	arr = []
	newarr = []
	str.each_char do
		|c| arr.push(c)
	end

	3.times do
		newarr.push(arr.clone.join)
		arr.insert(1, arr.delete_at(2))
		newarr.push(arr.clone.join)
		arr.insert(1, arr.delete_at(2))
		arr.insert(-1, arr.delete_at(0))
	end
	newarr
end

print find_anagram("cat")
puts
#puts find_anagram(reverse_letters.rb)

=begin
	
try .shuffle, .max, .join
	
=end