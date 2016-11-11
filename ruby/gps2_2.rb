# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take string and split at each space and store into an array
  # iterate through array, pushing each value as a key into a hash and 
  # 	assign default quantity as the associated value pair (default quantity will be 1)
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: hash, item name, and optional quantity
# steps: take item name as key for hash, and set associated value as quantity
  # if quantity isn't specified, set quantity to default (default = 1)
  # put key-value pair to the end of the hash
# output: hash

# Method to remove an item from the list
# input: hash and item name as a string
# steps: delete item in hash at item name specified at input
# output: hash

# Method to update the quantity of an item
# input: hash, item name, and new quantity
# steps: iterate through hash, if a key is equal to the item name in parameter,
  # set value equal to quantity
  # if key is not present in hash, return nil
# output: hash or nil

# Method to print a list and make it look pretty
# input: hash
# steps: iterate through hash, printing off key and value
# output: nil

def print_list(hash)
	hash.each do |food, quantity|
		print "#{food}: #{quantity}\n"
	end
end

def create_list(groceries)
	default = 1
	groceries_array = groceries.split(' ')
	
	groceries_hash = {}
	groceries_array.each do |items|
		groceries_hash[items] = default
	end
	print_list(groceries_hash)
end

def update_item(groceries_hash, name, new_quantity)
	if(groceries_hash.has_key?(name) )
		groceries_hash[name] = new_quantity
	else
		puts "specified name not found"
	end
	groceries_hash
end

def add_item(groceries_hash, new_hash)
	groceries_hash.merge!(create_list(new_hash) )
	groceries_hash
	# if(!groceries_hash.has_key?(name) )
	# 	groceries_hash[name] = quantity
	# else
	# 	puts "item already present, cannot add"
	# end
	# groceries_hash
end

def remove_item(groceries_hash, name)
	if(groceries_hash.has_key?(name) )
		groceries_hash.delete(name)
	else
		puts "specified name not found"
	end
	groceries_hash
end

#Driver code
grocery_string = "Bananas Grapes Oranges Bread Cucumber"
grocery_list = create_list(grocery_string)
add_list = "Lemonade Tomatoes Onions Ice-Cream"
grocery_list = add_item(grocery_list, add_list)
update_item(grocery_list,"Lemonade",4)
update_item(grocery_list,"Tomatoes",3)
update_item(grocery_list,"Ice-Cream",4)
puts "------------------"
print_list(grocery_list)
puts "------------------"
remove_item(grocery_list,"Lemonade")
print_list(grocery_list)
puts "------------------"
update_item(grocery_list,"Ice-Cream",1)
print_list(grocery_list)











