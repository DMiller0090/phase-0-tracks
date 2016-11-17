# Virus Predictor

# I worked on this challenge with: Alex Camacho.
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative lets you access files at the same path location without needing to 
# specify the full location.

require_relative 'state_data'

class VirusPredictor

# sets the attributes for the new instance variables of the class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  
# calls the private methods to calculate and print off information
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# calculates how many deaths will occur based on the paramaters and print off results
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
    when @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    when @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    when @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    when @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# calculates how fast it will spread based on the paramaters and print off results
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
  speed = 0.0
  
  case @population_density
    when @population_density >= 200
      speed += 0.5
    when @population_density >= 150
      speed += 1
    when @population_density >= 100
      speed += 1.5
    when @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, info|
  new_state = VirusPredictor.new(state, info[:population_density], info[:population])
  new_state.virus_effects
end


#=======================================================================
# Reflection Section
# Q. What are the differences between the two different hash syntaxes shown in the state_data file?
# A. The outside key uses a string to define it, while the inside key is defined by a symbol
# Q. What does require_relative do? How is it different from require?
# A. require_relative lets you access files at the same path location without needing to 
#     specify the full location.
# Q. What are some ways to iterate through a hash?
# A. Using a .each, using a for loop, or a while loop
# Q. When refactoring virus_effects, what stood out to you about the variables, if anything?
# A. The paramaters were redundant. It was unnecessary to pass the instance variables since the methods
#     themselves can access them.
# Q. What concept did you most solidify in this challenge?
# A. I learned a lot about different data types, like constants. I learned when to use a constant
#     versus when to use a global variable















