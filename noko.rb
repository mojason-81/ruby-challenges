require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.marthastewart.com/312598/brick-pressed-sandwich"))

search = doc.css('.components-data')

search.each{ |item|
	puts item.inner_html
}

puts
puts "But this works too"

list = doc.css('.components-list li span').inner_html
puts list
puts
puts "And you don't have to loop through anything."
puts "I'll admit, I had to look at the solution to figure out the loop,"
puts "but I figured this way out on my own."
puts
