# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

#gyms 
gym1 = Gym.new("Gym1")
gym2 = Gym.new("Gym2")
gym3 = Gym.new("Gym3")


#lifters
arnold = Lifter.new("Arnold", 100)
larry = Lifter.new("Larry", 69)

arnold.new_membership(100, gym1)
arnold.new_membership(200, gym2)

larry.new_membership(300, gym3)
larry.new_membership(100, gym1)


binding.pry

puts "Gains!"
