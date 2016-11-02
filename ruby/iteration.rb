fruit = ["bananas","apples","oranges","grapes","pears"]
hash_example = {
	"one" => 1,
	"two" => 2,
	"three" => 3,
	"four" => 4
}

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