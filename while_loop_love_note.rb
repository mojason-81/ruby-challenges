puts "Enter a number: "
count = gets.chomp.to_i

while (count > 0)
    if (count % 2 == 0)
        puts "She loves me."
    else
        puts "She loves me not."
    end
    count -= 1
end
