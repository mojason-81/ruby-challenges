class Computer
	def set_mfg= (mfg)
		@mfg = mfg
	end
	
	def set_dist= (dist)
		@dist = dist
	end
	
	def set_price= (price)
		@price = price
	end
	
	def get_mfg
		return @mfg
	end
	
	def get_dist
		return @dist
	end
	
	def get_price
		return @price
	end
end

class Laptop < Computer
	def set_size= (size)
		@size = size
	end
	
	def set_kb_type= (kb_type)
		@kb_type = kb_type
	end
	
	def get_size
		return @size
	end
	
	def get_kb_type
		return @kb_type
	end
end

class Tower < Computer
	def set_twr_class= (twr_class)
		@twr_class = twr_class
	end
	
	def set_kvm_included= (kvm_bool)
		@kvm_incl = kvm_bool
	end
	
	def get_twr_class
		return @twr_class
	end
	
	def get_kvm_incl
		if @kvm_incl
			return "it came with a keyboard, mouse, and monitor"
		else
			return "the keyboard, mouse, and monitor were separate"
		end
	end
end

my_laptop = Laptop.new
my_laptop.set_size=(15.6)
my_laptop.set_kb_type=("full-size with num pad")
my_laptop.set_mfg=("Lenovo")
my_laptop.set_dist=("Lenovo")
my_laptop.set_price=(750)

lptp_size = my_laptop.get_size
lptp_kb = my_laptop.get_kb_type
lptp_mfg = my_laptop.get_mfg
lptp_dist = my_laptop.get_dist
lptp_price = my_laptop.get_price

my_tower = Tower.new
my_tower.set_twr_class=("mid")
my_tower.set_kvm_included=(true)
my_tower.set_mfg=("HP")
my_tower.set_dist=("Best Buy")
my_tower.set_price=(1500)

twr_size = my_tower.get_twr_class
twr_kvm = my_tower.get_kvm_incl
twr_mfg = my_tower.get_mfg
twr_dist = my_tower.get_dist
twr_price = my_tower.get_price

puts "My laptop is a #{lptp_size} inch #{lptp_mfg} and the keyboard is #{lptp_kb}. \nI bought it from #{lptp_dist} for about $#{lptp_price}."
puts ""
puts "My desktop is made by #{twr_mfg} and #{twr_kvm}.  It is a #{twr_size}-sized tower. \nI bought it from #{twr_dist} for about $#{twr_price}."
puts ""
puts my_laptop.inspect
puts ""
puts my_tower.inspect
