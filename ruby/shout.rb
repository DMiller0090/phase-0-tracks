# require_relative 'shout.rb'

# p Shout.singleton_methods
# p Shout.yell_angrily("Blah")
# p Shout.yell_happily("Yay")

# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
  
#   def self.yell_happily(words)
#   	words + "!!!" + " :)"
#   end
# end

module Shout
  def yell_angrily(words)
    words + "!!!" + " :("
  end
  
  def yell_happily(words)
  	words + "!!!" + " :)"
  end
end

class Adult
	include Shout
end

class Baby
	include Shout
end

# Driver code
new_adult = Adult.new
new_baby = Baby.new

p new_adult.yell_happily("Yay")
p new_baby.yell_angrily("Wahhh")