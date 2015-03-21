class Blog
	attr_accessor :name
	def initialize
		puts "Name your blog."
		@blog_name = gets.chomp
		@@all_posts = []
	end
	
	def add_post
		@@all_posts << BlogPost.new
	end
	
	def view_posts
		@@all_posts.each{ |post|
			puts
			puts post.created
			puts "Author: #{post.author}"
			puts post.title
			puts post.content
		}
	end
	
	def sort_desc
		@@all_posts.sort {|a, b|
			b.created <=> a.created
		}
	end
	
	def sort_ascend
		@@all_posts.sort {|a,b|
			a.created <=> b.created
		}
	end
	
end

class BlogPost 
	attr_reader :created
	attr_reader :author
	attr_reader :title
	attr_reader :content
	def initialize
		@created = Time.now
		puts "Your name, please."
		@author = gets.chomp
		puts "Title of your post, please."
		@title = gets.chomp
		puts "Put your content here."
		@content = gets.chomp
	end	
end

#blog = Blog.new
puts "Would you like to create a new blog? Y/n"
answer = gets.chomp.downcase

if answer == "y"
	blog = Blog.new
	while answer == "y"
		post = blog.add_post
		puts "Would you like to add a post? Y/n"
		answer = gets.chomp.downcase
	end
end
	
puts "Would you like to add to an existing blog? Y/n"
response = gets.chomp.downcase

if response == "y"
	while response =="y"
		puts = "What's the name of the blog you would like to add to?"
		blog_name = gets.chomp
		post = blog_name.add_post
		puts "Would you like to add another post? Y/n"
		response = gets.chomp.downcase
	end
end


puts "How would you like to sort your posts? Enter 'A' for ascending or 'D' for decending."
sorting = gets.chomp.downcase

if sorting == "a"
	blog.sort_ascend
elsif sorting == "d"
	blog.sort_desc
end

puts "Would you like to view your posts? Y/n"
response = gets.chomp.downcase

if response == "y"
	blog.view_posts
end
