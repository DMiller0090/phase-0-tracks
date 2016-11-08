#Declare a class
class Puppy
  
  def initialize
  	puts "initializing new puppy instance..."
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
  	puts "Woof! "*number
  end
  
  def roll_over
  	puts "*Rolls over*"
  end
  
  def dog_years(years)
  	p years / 7
  end
  
  def eat(food)
  	puts "I like to eat #{food}"
  end
end

class Vehicle
	def initialize(color,make,year)
		@color = color
		@make = make
		@year = year
		@speed = 0
	end
	
	def accelerate(speed)
		@speed += speed
		puts "Your #{@color} #{@make} is going #{@speed} mph"
	end
	
	def stop
		@speed = 0
	end
	
	def car_info
		puts "Your #{@color} #{@make} is made in #{@year}"
		puts "******************************"
	end
end

#Driver code for release 1
winston = Puppy.new
winston.fetch("ball")
winston.speak(5)
winston.roll_over
winston.dog_years(77)
winston.eat("Doggy biscuits")

#Driver code for release 2
arr_car = []
for year in 1950..2001
	arr_car.push(Vehicle.new("red","honda civic", year) )
end

arr_car.each do |car|
	car.accelerate(25)
	car.car_info
end







