# SPECIES ------------------------
# Canine

# CHARACTERISTICS ----------------
# Name: varies
# age: varies
# eyes: 2
# fur_color: varies
# friendly: yes

# BEHAVIOR -----------------------
# Lick
# Waggle tail
# Fetch

class Puppy
end

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

p spot.class
p duchess == fido
p fido.instance_of?(Array)
p fido.instance_of?(Puppy)
p spot.play_dead