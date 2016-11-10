# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take string and split at each space and store into an array
  # iterate through array, pushing each value as a key into a hash and 
  # 	assign default quantity as the associated value pair (default quantity will be 1)
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: item name and optional quantity
# steps: take item name as key for hash, and set associated value as quantity
  # if quantity isn't specified, set quantity to default (default = 1)
  # put key-value pair to the end of the hash
# output: hash

# Method to remove an item from the list
# input: item name as a string
# steps: delete item in hash at item name specified at input
# output: hash

# Method to update the quantity of an item
# input: item name and new quantity
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


