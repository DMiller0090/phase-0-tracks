puts "How many employees will be processed?\n"
num = gets.to_i

for i in 1..num
	puts "What is your name?\n"
	name = gets.chomp
	puts "How old are you?\n"
	age = gets.to_i
	puts "What year were you born?\n"
	year = gets.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you?\n"
	foodAns = gets.chomp
	puts "Would you like to enroll in the company's health insurance?\n"
	insuranceAns = gets.chomp
	if (2016-year)==age 
		ageCorrect = true
	end
	allergy = NIL
	puts "Enter all allergies you have (type 'done' to end\n"
	until (allergy == "sunshine" || allergy == "done") do
		allergy = gets.chomp
	end

	if allergy == "sunshine"
		puts "Probably a vampire\n"
	else
		if (name == "Drake Cula" || name == "Tu Fang")
			puts "Definitely a vampire\n"
		elsif (ageCorrect && (foodAns == 'y' || insuranceAns == 'y') )
			puts "Probably not a vampire\n"
		elsif (!ageCorrect && foodAns == 'n' && insuranceAns == 'n')
			puts "Almost certainly a vampire\n"
		elsif (!ageCorrect && (foodAns == 'n' || insuranceAns == 'n') )
			puts "Probably a vampire\n"
		else
			puts "Results inconclusive\n"
		end
	end
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends.\n"