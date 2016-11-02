$vowels = ['a','e','i','o','u']
def Fake_Name (name)
	name_array = name.downcase.chars
	pos = 0
	first_name = name_array.take_while do |letter| 
		pos += 1
		letter != ' '
	end
	last_name = name_array[pos..-1]
	fake_first = Swap_Chars(last_name)
	fake_last = Swap_Chars(first_name)
	fake_first = fake_first.join("").capitalize
	fake_last = fake_last.join("").capitalize
	
	fake_name = fake_first + " " + fake_last
end

def Swap_Chars(char_array)
	i = 0
	while i < char_array.length
		vowel_pos = Check_If_Vowel(char_array[i])
		if vowel_pos != -1
			if vowel_pos < 4
				char_array[i] = $vowels[vowel_pos + 1]
			else
				char_array[i] = $vowels[0]
			end
		else
			char_array[i] = Next_Consonant(char_array[i])
		end
		i += 1
	end
	char_array
end

def Check_If_Vowel(char)
	found_vowel = -1
	i = 0
	while i < $vowels.length
		if $vowels[i] == char
			found_vowel = i
		end
		i += 1
	end
	found_vowel
end

def Next_Consonant(char)
	new_char = ''
	if char == 'z'
		new_char = 'b'
	else
		found_vowel = Check_If_Vowel(char.next)
		if found_vowel == -1
			new_char = char.next
		else
			new_char = char.next.next
		end
	end
end
all_names = {}
user_name = nil
while true
	puts "Submit a name: (type 'quit' to end)"
	user_name = gets.chomp
	break if user_name == 'quit'
	all_names[user_name] = Fake_Name(user_name)
end

all_names.each do |old_name, new_name|
	puts "#{old_name} is also known as #{new_name}"
end