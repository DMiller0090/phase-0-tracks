fruit = ["bananas","apples","oranges","grapes","pears"]
hash_example = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4
}

#RELEASE 1
fruit.each do |item|
	puts item
end

hash_example.each do |word, number|
	puts "#{word}, #{number}"
end

fruit.map! do |item|
	item.upcase
end

fruit.each do |item|
	puts item
end

index = 0



# RELEASE 2
numbers = [60,1,22,3,4,53,66,7,18,9,10]

#2.
select_numbers = numbers.select do |number|
	number > 10
end
p select_numbers

select_hash_example = hash_example.select do |word, number|
	number > 2
end
p select_hash_example

#3.
reject_numbers = numbers.reject do |number|
	number > 10
end
p reject_numbers

reject_hash_example = hash_example.reject do |word, number|
	number > 2
end
p reject_hash_example

#4.
take_numbers = numbers.take_while {|number| number != 66}
p take_numbers

take_numbers_hash_example = hash_example.take_while {|word, number| number !=3}
p take_numbers_hash_example

#1.
numbers.delete_if {|number| number > 5 }
p numbers

hash_example.delete_if {|word, number| number < 3 }
p hash_example


