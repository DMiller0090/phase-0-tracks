# PSUDEO CODE
# Define a hash with all the information
# Ask user for information of each has
# Print hash
# Ask if user wants to update info
# If user inputs something other than 'none'
# 		convert string input into a symbol
# 		ask user for changed info
# 		update info
# Print of updated hash


client_info = {
	:name => "",
	:age => 0,
	:number_of_children => 0,
	:decor_theme => ""
}
p "Enter your name:"
input = gets.chomp
client_info[:name] = input

p "Enter your age:"
input = gets.to_i 
client_info[:age] = input

p "How many children do you have?"
input = gets.to_i
client_info[:number_of_children] = input

p "What theme do you want for your decor?"
input = gets.chomp
client_info[:decor_theme] = input

puts "Your info:"
puts client_info

puts "Type one of the following to update your info: (type 'none' to skip)"
puts client_info.keys
input = gets.chomp
if (input != "none")
	update_key = input.to_sym
	puts "Enter changed information:"
	input = gets.chomp
	client_info[update_key] = input
end
puts client_info