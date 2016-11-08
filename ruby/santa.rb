class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender
	
	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	
	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!" 
	end
	
	def celebrate_birthday
		@age += 1 
	end
	
	def get_mad_at(reindeer)
		index = @reindeer_ranking.index(reindeer)
		if index != nil
			@reindeer_ranking.insert(-1,@reindeer_ranking.delete_at(index) )
		end 
	end
	
	# #setter methods
	# def gender=(new_gender)
	# 	@gender = new_gender
	# end 
	# #getter methods
	# def age
	# 	@age	
	# end
	
	# def ethnicity
	# 	@ethnicity	
	# end
	
end 

#Driver code release 2-3
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")

santas[2].get_mad_at("Dasher")
santas[2].gender = "male"
santas[2].gender

#Driver code release 4
ex_genders = ["Agender","Male","Female","Bigender","Gender fluid"]
ex_ethnicity = ["Black","White","Latino","Native American","Japanese","Chinese","European"]

for i in 1..100
	new_santa = Santa.new(ex_genders.sample, ex_ethnicity.sample)
	for j in 1..(1 + rand(140) )
		new_santa.celebrate_birthday
	end
	puts "Age: #{new_santa.age} | Gender: #{new_santa.gender} | Ethnicity: #{new_santa.ethnicity}\n\n"
end




