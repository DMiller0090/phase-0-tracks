puts "What is the hamsters name?"
name = gets.chomp
puts "Volume level? (1-10)"
volume = gets.to_i
puts "Fur color?"
fur = gets.chomp
puts "Adoptable? (Y/N)"
adoptable = gets.chomp
if (adoptable == "Y")
	adoptable = true
elsif (adoptable == "N")
	adoptable = false
else
	puts "You entered incorrectly you dummy!"
end
puts "Estimated age?"
age = gets.to_i
if (age == "")
	age = nil
end

puts "Hamsters name: #{name}"
if (volume <= 5)
	puts "This hamster is not loud"
else 
	puts "This hamster might be annoying"
end
puts "This hamster has #{fur} fur"
if (adoptable)
	puts "This hamster is adoptable!"
elsif (!adoptable)
	puts "This hamster is not adoptable"
else
	puts "This user was too dumb to enter correctly"
end
puts "The estimated age for this hamster is around #{age}"
