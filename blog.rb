class BlogPost
		
	def initialize(post_title, post_content)
		@post_title = post_title
		@post_content = post_content
		@time_created = Time.now
	end
	
	def get_post_title
		return @post_title
	end
	
	def get_post_content
		return @post_content
	end
	
	def get_count
		return @@counter
	end
	
end

posts_with_contents = Hash.new

def add_to_hash(post_title, post_content, posts_with_contents, time_created)
	posts_with_contents.store(post_title, post_content)
	puts posts_with_contents
	return posts_with_contents
end

puts "Would you like to add a blog post? Y/n"
answer = gets.chomp.downcase

while answer == "y"
	puts "Enter your post title."
	title = gets.chomp
	puts "Enter your post contents."
	contents = gets.chomp
	post = BlogPost.new(title, contents)
	add_to_hash(title, contents, posts_with_contents, time_created)
	puts "Would you like to add a blog post? Y/n"
	answer = gets.chomp.downcase
end
