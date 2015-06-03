def reverse_letters(arr)
	hash = Hash.new
	arr.each_with_index do |item, index| 
		hash[item] = index
	end

	newarr = []

	hash.length.times do
		hashmax = hash.max
		newarr << hashmax[0]
		hash.delete("#{hashmax[0]}")
	end
	word = newarr.join
	return word
end

print reverse_letters(%w(a z b k l v s d))
puts